class Link < ApplicationRecord
  belongs_to :user

  validates :redirect_from, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :shortcode, presence: true, uniqueness: true, length: { minimum: 5, maximum: 20 }
  validates :click_count, :creator_ip, presence: true
  validates :last_clicked_at, presence: true, if: click_count > 0

  before_validation :generate_shortcode, on: :create

  scope :active, -> { where("expires_at IS NULL OR expires_at > ?", Time.current) }

  def generate_shortcode
    return if shortcode.present?

    loop do
      self.shortcode = SecureRandom.alphanumeric(6).downcase
      break unless self.class.exists?(shortcode: shortcode)
    end
  end

  def expired?
    expires_at.present? && expires_at < Time.current
  end

  def register_click!
    increment!(:click_count)
    update_column(:last_clicked_at, Time.current)
  end
end

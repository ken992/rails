# frozen_string_literal: true

# Provides delayed purging of ActiveStorage::Blob records via ActiveStorage::Blob#purge_later.
class ActiveStorage::PurgeJob < ActiveJob::Base
  # FIXME: Limit this to a custom ActiveStorage error
  retry_on StandardError

  def perform(blob)
    blob.purge
  end
end

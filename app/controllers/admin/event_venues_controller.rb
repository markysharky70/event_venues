module Admin
  class EventVenuesController < Admin::BaseController

    crudify :event_venue,
            :title_attribute => 'venue_name', :xhr_paging => true

  end
end

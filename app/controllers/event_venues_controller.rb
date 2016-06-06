class EventVenuesController < ApplicationController

  before_filter :find_all_event_venues
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event_venue in the line below:
    present(@page)
  end

  def show
    @event_venue = EventVenue.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event_venue in the line below:
    present(@page)
  end

protected

  def find_all_event_venues
    @event_venues = EventVenue.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/event_venues").first
  end

end

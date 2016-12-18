# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'studios/edit', type: :view do
  before(:each) do
    @studio = assign(:studio, Studio.create!(
                                name: 'MyString',
                                prefecture: 'MyString',
                                city: 'MyString',
                                address: 'MyString',
                                nearest_station_1: 'MyString',
                                nearest_station_2: 'MyString',
                                nearest_staion_3: 'MyString',
                                tel: 'MyString',
                                late_night: false,
                                locker_room: false,
                                parking: false,
                                cancell_deadline: 'MyString',
                                image: 'MyString',
                                url: 'MyString',
                                feature: 'MyText',
                                remarks: 'MyText'
    ))
  end

  it 'renders the edit studio form' do
    render

    assert_select 'form[action=?][method=?]', studio_path(@studio), 'post' do
      assert_select 'input#studio_name[name=?]', 'studio[name]'

      assert_select 'input#studio_prefecture[name=?]', 'studio[prefecture]'

      assert_select 'input#studio_city[name=?]', 'studio[city]'

      assert_select 'input#studio_address[name=?]', 'studio[address]'

      assert_select 'input#studio_nearest_station_1[name=?]', 'studio[nearest_station_1]'

      assert_select 'input#studio_nearest_station_2[name=?]', 'studio[nearest_station_2]'

      assert_select 'input#studio_nearest_staion_3[name=?]', 'studio[nearest_staion_3]'

      assert_select 'input#studio_tel[name=?]', 'studio[tel]'

      assert_select 'input#studio_late_night[name=?]', 'studio[late_night]'

      assert_select 'input#studio_locker_room[name=?]', 'studio[locker_room]'

      assert_select 'input#studio_parking[name=?]', 'studio[parking]'

      assert_select 'input#studio_cancell_deadline[name=?]', 'studio[cancell_deadline]'

      assert_select 'input#studio_image[name=?]', 'studio[image]'

      assert_select 'input#studio_url[name=?]', 'studio[url]'

      assert_select 'textarea#studio_feature[name=?]', 'studio[feature]'

      assert_select 'textarea#studio_remarks[name=?]', 'studio[remarks]'
    end
  end
end

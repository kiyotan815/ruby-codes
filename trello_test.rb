require 'trello'
require 'pp'

Trello.configure do |config|
end

card = Trello.client.find(:card, 'UdW0QUpt')
card_part = {
  id: card.attributes[:id],
  name: card.attributes[:name],
  desc: card.attributes[:desc]
}

pp card_part

checklist = card.checklists.first
checklist_part = {
  name: checklist.attributes[:name],
  size: checklist.attributes[:check_items].size,
  items: checklist.attributes[:check_items].map { |item|
    {
      name: item['name'],
      state: item['state']
    }
  }
}

pp checklist_part

# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


questionaire = {
  "Accessibility" => ["Is your space open for more than 10 hours per week?",
      "Is your space open for coworking at the weekends?",
      "Is your space open to anyone?",
      "Do your coworkers have their own keys?",
      "Is it open to people with all professional backgrounds?",
      "Is the space located in close proximity to its members?",
      "Is the space open at night (after 9pm)?",
      "Is there an hourly or half-day rate?",
      "Is there a daily rate?",
      "Is there public transport nearby?"
    ],
  "Pooling of Resources" => [
    "Are (the majority) of the workspaces shared?",
    "Does the space have at least one communal area?",
    "Is there a printer, photocopier and scanner at the coworkers’ disposal?",
    "Is there a secretary, accountant, or technical assistance made available for coworkers?",
    "Does the space provide a virtual address/postage service or storage service (for materials or digital data)?",
    "Does the space provide a shared land-line?",
    "Is the space fitted with a communal workshop (fablab)?",
    "Does the space provide access to shared production tools (3D printers, sewing machines, musical instruments, photographic equipment, audiovisual production equipment)?",
    "Does the space have at least one of the following areas: shared shop front, childcare facilities, recording studio or darkroom?",
    "Is there an event space and relevant amenities, including projectors, whiteboards, etc?"
    ],
  "Shared Energies" => [
     "Is the space open to everyone?",
     "Does the space regularly host events that are open to non-members (more than once per week)?",
     "Do the coworkers have access to an internal social network/intranet?",
     "Do the space managers organize events designed to introduce coworkers to one another on a regular basis?",
     "Does the space host member events on a regular basis (more than once per week)?",
     "Is there a monthly (or less) membership plan?",
     "On average, does the space host more than 30 coworkers each day?",
     "Amongst the staff, is there a person whose specific job is to connect members and put them in contact with one another?",
     "Does the space offer workshops or courses to its members?",
     "Does the space frequently communicate its members’ projects’ via its own communication channels (at least once per week)?"
   ],
   "Proximity" => [
      "Is there a dedicated for convivial exchange in the space (café, communal kitchen...)?",
      "Do coworkers mainly work on flexible or ‘hot-desks’ (rather than fixed workstations)?",
      "Is the spaces limited to teams of three members or less?",
      "In the space, do the majority of coworkers share the same open space?",
      "Do coworkers often eat meals together?",
      "Does your space hold less than 30 people at a time?",
      "Does the space have games (fussball or table-tennis table, board games, games console)?",
      "Within the space, do you often help or attend spontaneous events between coworkers: after-work drinks, games, joint projects... (at least once per week)?",
      "Do most of the coworkers in your space know the names of at least half of the other coworkers in the community?",
      "Do you organize members-only events at least twice per month?"
    ],
    "Permission" => [
      "Are the coworkers involved in the overall governance of the space?",
      "If the space is an association, are the coworkers members of that association or organization?",
      "Can members eat and/or drink in the work areas?",
      "Does the space have an interactive members’ wall?",
      "Can members prepare meals in the space during the day?",
      "Do members initiate events?",
      "Did the coworkers help in arranging the space?",
      "Is there an internal social network/intranet?",
      "Are there often social or non-work related gatherings organized in your space?",
      "Is the space adaptable and flexible (tables moved often, furniture often rearranged...)?"
    ],
    "Privacy" => [
      "Does the space have a separate meeting room?",
      "Does the space have several isolated rooms and/or a telephone booth?",
      "Does the space have silent or quiet areas?",
      "Does the space have an interactive members’ wall?",
      "Is minimal membership engagement more than one month?",
      "Do you have a backup service for coworkers’ digital data?",
      "Are the majority of workstations private?",
      "Does the space have lockers or lockable storage areas?",
      "Is the space under video surveillance?",
      "Is there an area for repose or rest?",
    ]
}

Section.delete_all

questionaire.each do |section, questions|
   new_section = Section.create! name: section
   questions.map{|question| new_section.questions << Question.new(content: question)}
end
  

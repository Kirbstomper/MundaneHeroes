# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

powers = [{:name => "Television", :description =>"You can distract someone telepathically for 2-3 seconds"},
          {:name => "Lighting Fingers", :description =>"Through raising your hands you can produce an electric bolt from your fingers.  As a 
ranged attack on your turn you may use this power.  However, the electricity you 
produce is incredibly inaccurate.  When you make an attack of this nature you must roll a d6 if the result is a 2 or less you hit a random target within your vision.  Otherwise you hit your target with full damage. 
"},
          {:name => "Artic Feet", :description =>"Your feet are extremely cold!"},
          {:name => "Animal Creeper", :description =>"The inner machinations of the minds of beasts are well known to you.  However while 
	 you can know what an animal is thinking, you cannot influence the animal using your
 	 psychic powers."},
          {:name => "Fire Hazzard", :description =>"Ability to make anything flammable"},
          {:name => "FlameOff", :description =>"You are fire retardant!"},
          {:name => "Inking", :description =>"Ability to make ink pens burst open"},
          {:name => "Wall Phaze", :description =>" Ability to run through SOME walls"},
          {:name => "LactoVision", :description =>"Ability to make someone temporarily lactose intolerant"},
          {:name => "All Knowing Forgetfull", :description =>"Omniscient with Alzheimer's"},
          {:name => "Hatception", :description =>"Everybody you meet thinks you are wearing a hat"},
          {:name => "ToddlerMancy", :description =>"You have the ability to summon a toddler"},
          {:name => "Demunication", :description =>"You can talk to demons"},
          {:name => "Frictionless", :description =>"You have the ability to become ultra slippery"},
          {:name => "Laser Eye Care", :description =>"You have laser vision, BUT IT BURNS YOUR EYES!"},
          {:name => "Holo-There", :description =>"You can create a hologram of a specific famous person"},
          {:name => "Cry Baby", :description =>"Seventy percent of the human body is composed of water.  You have the ability to use	
this water by shooting it out of your eyes at extremely high velocity.  Once per turn you may use this ability as a special attack on any target within line of sight.  Hitting a target with this attacks causes them to suffer two damage and be knocked backwards five squares.  However, using this power quickly dehydrates you.  After using this power once you must expend three action points to rehydrate enough to use it again.
 "},
          {:name => "Hurt for a second", :description =>"You can heal any wound with salt in it"},
          {:name => "Wrong Rabbit Hole", :description =>"You can pull a hat out of a rabbit "},
          {:name => "InvisiNOPE", :description =>"Become invisible ot someone who is already looking for you"}
          
          
          ]
          
powers.each do |power|
  Power.create!(power)
end
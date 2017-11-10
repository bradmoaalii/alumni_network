class Profile < ApplicationRecord
	enum status: { student: 0, alumni: 1 }
	enum current_activity: { not_active: 0, active: 1 }
	enum work_status: { full_time: 0, part_time: 1, contract: 2 }

end

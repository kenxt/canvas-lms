# frozen_string_literal: true

#
# Copyright (C) 2024 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class AddUnifiedToolIdFieldsToContextExternalTools < ActiveRecord::Migration[7.1]
  tag :predeploy

  def change
    change_table :context_external_tools, bulk: true do |t|
      t.boolean :unified_tool_id_needs_update, default: false, null: false
      t.datetime :unified_tool_id_last_updated_at
    end
  end
end

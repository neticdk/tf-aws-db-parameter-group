/*
 * Copyright (c) 2019 Netic A/S. All rights reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

output "db_parameter_group_id" {
  description = "The db parameter group name"
  value       = element(concat(aws_db_parameter_group.this.*.id, aws_db_parameter_group.this_no_prefix.*.id, [""]), 0)
}

output "db_parameter_group_arn" {
  description = "The ARN of the db parameter group"
  value       = element(concat(aws_db_parameter_group.this.*.arn, aws_db_parameter_group.this_no_prefix.*.arn, [""]), 0)
}

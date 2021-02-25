# already exists, you probably need to import

# resource "aws_iam_role" "eks_cluster_role" {
#   name               = "eksClusterRole"
#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Principal": {
#         "Service": "ec2.amazonaws.com"
#       },
#       "Effect": "Allow",
#       "Sid": ""
#     }
#   ]
# }
# EOF

#   tags = {
#     Owner = "tf"
#   }
# }

# # resource "aws_eks_node_group" "example" {
# #   depends_on = [
# #     aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
# #     aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
# #     aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
# #   ]
# # }

# resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
#   role       = aws_iam_role.eks_cluster_role.name
# }

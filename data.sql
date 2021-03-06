-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.6-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table isrm-2.assets: ~4 rows (approximately)
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
REPLACE INTO `assets` (`id`, `name`, `desc`, `template_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 'asset 1', NULL, 1, 1, NULL, NULL),
	(2, 'asset 2', NULL, 1, 1, NULL, NULL),
	(3, 'asset 3', NULL, 2, 1, NULL, NULL),
	(4, 'asset 4', NULL, 2, 1, NULL, NULL);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;

-- Dumping data for table isrm-2.asset_incident: ~0 rows (approximately)
/*!40000 ALTER TABLE `asset_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_incident` ENABLE KEYS */;

-- Dumping data for table isrm-2.child_parent: ~6 rows (approximately)
/*!40000 ALTER TABLE `child_parent` DISABLE KEYS */;
REPLACE INTO `child_parent` (`parent_id`, `child_id`, `created_at`, `updated_at`) VALUES
	(1, 3, NULL, NULL),
	(1, 4, NULL, NULL),
	(2, 1, NULL, NULL),
	(2, 4, NULL, NULL),
	(3, 2, NULL, NULL),
	(4, 3, NULL, NULL);
/*!40000 ALTER TABLE `child_parent` ENABLE KEYS */;

-- Dumping data for table isrm-2.configs: ~0 rows (approximately)
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;

-- Dumping data for table isrm-2.controls: ~114 rows (approximately)
/*!40000 ALTER TABLE `controls` DISABLE KEYS */;
REPLACE INTO `controls` (`id`, `name`, `desc`, `reason`, `extent`, `baseline`, `created_at`, `updated_at`) VALUES
	(1, '5.1.1', 'Information Security: Policies', NULL, NULL, '1', NULL, NULL),
	(2, '5.1.2', 'Information Security: Review of Policies', NULL, NULL, '1', NULL, NULL),
	(3, '6.1.1', 'Information Security Roles & Responsibilities', NULL, NULL, '1', NULL, NULL),
	(4, '6.1.2', 'Segregation of Duties', NULL, NULL, '1', NULL, NULL),
	(5, '6.1.3', 'Contact with Authorities', NULL, NULL, '0', NULL, NULL),
	(6, '6.1.4', 'Contact with Special Interest Groups', NULL, NULL, '1', NULL, NULL),
	(7, '6.1.5', 'Information Security in Project Management', NULL, NULL, '0', NULL, NULL),
	(8, '6.2.1', 'Mobile Device Policy', NULL, NULL, '1', NULL, NULL),
	(9, '6.2.2', 'Teleworking', NULL, NULL, '0', NULL, NULL),
	(10, '7.1.1', 'Personnel: Screening', NULL, NULL, '1', NULL, NULL),
	(11, '7.1.2', 'Personnel: Terms & Conditions of Employment', NULL, NULL, '1', NULL, NULL),
	(12, '7.2.1', 'Personnel: Management Responsibility to Ensure Policy Adherence', NULL, NULL, '1', NULL, NULL),
	(13, '7.2.2', 'Personnel: Information Security, Awareness, Education & Training', NULL, NULL, '1', NULL, NULL),
	(14, '7.2.3', 'Personnel: Disciplinary Process', NULL, NULL, '1', NULL, NULL),
	(15, '7.3.1', 'Personnel: Termination or Change of Employment Responsibilities', NULL, NULL, '1', NULL, NULL),
	(16, '8.1.1', 'Responsibility for Assets: Inventory of Assets', NULL, NULL, '1', NULL, NULL),
	(17, '8.1.2', 'Responsibility for Assets: Ownership of Assets', NULL, NULL, '1', NULL, NULL),
	(18, '8.1.3', 'Responsibility for Assets: Acceptable Use of Assets', NULL, NULL, '1', NULL, NULL),
	(19, '8.1.4', 'Responsibility for Assets: Return of Assets', NULL, NULL, '0', NULL, NULL),
	(20, '8.2.1', 'Information Classification: Classification of Information', NULL, NULL, '1', NULL, NULL),
	(21, '8.2.2', 'Information Classification: Labelling of Information', NULL, NULL, '1', NULL, NULL),
	(22, '8.2.3', 'Information Classification: Handling of Assets', NULL, NULL, '0', NULL, NULL),
	(23, '8.3.1', 'Media Handling: Management of Removable Media', NULL, NULL, '1', NULL, NULL),
	(24, '8.3.2', 'Media Handling: Disposal of Media', NULL, NULL, '1', NULL, NULL),
	(25, '8.3.3', 'Media Handling: Physical Media Transfer', NULL, NULL, '1', NULL, NULL),
	(26, '9.1.1', 'Access Control Policy', NULL, NULL, '1', NULL, NULL),
	(27, '9.1.2', 'Network Access: Policy on User Access', NULL, NULL, '1', NULL, NULL),
	(28, '9.2.1', 'Access Management: User Registration and De-Registration', NULL, NULL, '1', NULL, NULL),
	(29, '9.2.2', 'Access Management: User Access Provisioning', NULL, NULL, '1', NULL, NULL),
	(30, '9.2.3', 'Access Management: User Privilege Management', NULL, NULL, '1', NULL, NULL),
	(31, '9.2.4', 'Access Management: Management of User Authentication Information (Passwords)', NULL, NULL, '0', NULL, NULL),
	(32, '9.2.5', 'Access Management: User Rights Reviews', NULL, NULL, '1', NULL, NULL),
	(33, '9.2.6', 'Personnel: Removal or Adjustment of Access Rights (Termination or Change)', NULL, NULL, '1', NULL, NULL),
	(34, '9.3.1', 'User Responsibility: Use of Secret Authentication Information (Passwords)', NULL, NULL, '1', NULL, NULL),
	(35, '9.4.1', 'Application & Information Systems: User Access Control', NULL, NULL, '1', NULL, NULL),
	(36, '9.4.2', 'Operating System: Secure Log-on Procedures', NULL, NULL, '1', NULL, NULL),
	(37, '9.4.3', 'Operating System: User Password Requirements', NULL, NULL, '1', NULL, NULL),
	(38, '9.4.4', 'Operating System: Use of Privileged Utility Programs', NULL, NULL, '0', NULL, NULL),
	(39, '9.4.5', 'System Files: Access Control for Source Code', NULL, NULL, '0', NULL, NULL),
	(40, '10.1.1', 'Cryptography: Policy', NULL, NULL, '0', NULL, NULL),
	(41, '10.1.2', 'Cryptography: Key Management Activities', NULL, NULL, '0', NULL, NULL),
	(42, '11.1.1', 'Physical Security: Secure Perimeter ', NULL, NULL, '0', NULL, NULL),
	(43, '11.1.2', 'Physical Security: Entry Controls (e.g. Access Control)', NULL, NULL, '1', NULL, NULL),
	(44, '11.1.3', 'Physical Security: Securing Offices, Rooms & Facilities', NULL, NULL, '0', NULL, NULL),
	(45, '11.1.4', 'Physical Security: Protection Against External & Environmental Threats', NULL, NULL, '1', NULL, NULL),
	(46, '11.1.5', 'Physical Security: Working in Secure Areas', NULL, NULL, '1', NULL, NULL),
	(47, '11.1.6', 'Physical Security: Delivery & Loading Areas', NULL, NULL, '0', NULL, NULL),
	(48, '11.2.1', 'Equipment Security: Siting and Protection', NULL, NULL, '1', NULL, NULL),
	(49, '11.2.2', 'Equipment Security: Supporting Utilities (e.g. Electrical Supply)', NULL, NULL, '0', NULL, NULL),
	(50, '11.2.3', 'Equipment Security: Cabling Security', NULL, NULL, '1', NULL, NULL),
	(51, '11.2.4', 'Equipment Security: Maintenance', NULL, NULL, '0', NULL, NULL),
	(52, '11.2.5', 'Equipment Security: Authorisation for Removal of Assets', NULL, NULL, '0', NULL, NULL),
	(53, '11.2.6', 'Equipment Security: Off-Premises Protection', NULL, NULL, '0', NULL, NULL),
	(54, '11.2.7', 'Equipment Security: Secure Disposal or Re-Use (incl Data Erasure)', NULL, NULL, '0', NULL, NULL),
	(55, '11.2.8', 'User Responsibility: Security of Unattended Equipment', NULL, NULL, '0', NULL, NULL),
	(56, '11.2.9', 'User Responsibility: Clear Desk & Clear Screen Policy', NULL, NULL, '0', NULL, NULL),
	(57, '12.1.1', 'Documented Procedures for Information Processing Facilities', NULL, NULL, '0', NULL, NULL),
	(58, '12.1.2', 'Change Management for Information Processing Facilities', NULL, NULL, '1', NULL, NULL),
	(59, '12.1.3', 'Capacity Management Planning and Reporting', NULL, NULL, '0', NULL, NULL),
	(60, '12.1.4', 'Separation of Development, Test & Operational Facilities', NULL, NULL, '0', NULL, NULL),
	(61, '12.2.1', 'Controls Against Malware', NULL, NULL, '1', NULL, NULL),
	(62, '12.3.1', 'Information Back-Up', NULL, NULL, '1', NULL, NULL),
	(63, '12.4.1', 'Logging & Monitoring: Event Logging of Information Processing Systems', NULL, NULL, '1', NULL, NULL),
	(64, '12.4.2', 'Logging & Monitoring: Protection of Log Information', NULL, NULL, '0', NULL, NULL),
	(65, '12.4.3', 'Logging & Monitoring: Administrator & Operator Activity Logs', NULL, NULL, '0', NULL, NULL),
	(66, '12.4.4', 'Logging & Monitoring: System Clock Synchronisation', NULL, NULL, '1', NULL, NULL),
	(67, '12.5.1', 'Operational Software: Installation on Operational Systems', NULL, NULL, '0', NULL, NULL),
	(68, '12.6.1', 'Technical Vulnerabilities: Management and Control (of)', NULL, NULL, '1', NULL, NULL),
	(69, '12.6.2', 'Technical Vulnerabilities: Restrictions on Software Installation', NULL, NULL, '0', NULL, NULL),
	(70, '12.7.1', 'Information System Audit Tools: Planning and Management', NULL, NULL, '0', NULL, NULL),
	(71, '13.1.1', 'Network Management and Protection Controls', NULL, NULL, '0', NULL, NULL),
	(72, '13.1.2', 'Security of Network Services', NULL, NULL, '0', NULL, NULL),
	(73, '13.1.3', 'Network Access: Segregation in Networks', NULL, NULL, '0', NULL, NULL),
	(74, '13.2.1', 'Information Transfer Policies & Procedures', NULL, NULL, '0', NULL, NULL),
	(75, '13.2.2', 'Agreements on Information Transfer', NULL, NULL, '1', NULL, NULL),
	(76, '13.2.3', 'Protection of Information in Electronic Messaging', NULL, NULL, '1', NULL, NULL),
	(77, '13.2.4', 'Confidentiality or Non Disclosure Agreements', NULL, NULL, '1', NULL, NULL),
	(78, '14.1.1', 'Information Systems: Analysis and Specification of Security Requirements', NULL, NULL, '0', NULL, NULL),
	(79, '14.1.2', 'Securing Application Services on Public Networks', NULL, NULL, '1', NULL, NULL),
	(80, '14.1.3', 'Protecting Application Services Transactions', NULL, NULL, '1', NULL, NULL),
	(81, '14.2.1', 'Information Systems: Secure Development Policy', NULL, NULL, '0', NULL, NULL),
	(82, '14.2.2', 'Information Systems: Change Control', NULL, NULL, '1', NULL, NULL),
	(83, '14.2.3', 'Information Systems: Technical Review Post Platform Changes', NULL, NULL, '1', NULL, NULL),
	(84, '14.2.4', 'Information Systems: Restrictions on Changes to Software Packages', NULL, NULL, '0', NULL, NULL),
	(85, '14.2.5', 'Information Systems: Secure System Engineering Principles', NULL, NULL, '1', NULL, NULL),
	(86, '14.2.6', 'Information Systems: Secure Development Environment', NULL, NULL, '0', NULL, NULL),
	(87, '14.2.7', 'Information Systems: Outsourced Development', NULL, NULL, '1', NULL, NULL),
	(88, '14.2.8', 'Information Systems: System Security Testing', NULL, NULL, '1', NULL, NULL),
	(89, '14.2.9', 'Information Systems: Systems Acceptance Testing', NULL, NULL, '1', NULL, NULL),
	(90, '14.3.1', 'Test Data: Protection of Test Data', NULL, NULL, '1', NULL, NULL),
	(91, '15.1.1', 'Supplier Relationships: Information Security Policy (for)', NULL, NULL, '1', NULL, NULL),
	(92, '15.1.2', 'Supplier, Relationships: Addressing Security within Agreements', NULL, NULL, '1', NULL, NULL),
	(93, '15.1.3', 'Supplier Relationships: ICT Supply Chain', NULL, NULL, '0', NULL, NULL),
	(94, '15.2.1', 'Suppliers: Monitoring & Review of Supplier Services', NULL, NULL, '1', NULL, NULL),
	(95, '15.2.2', 'Suppliers: Managing Changes to Supplier Services', NULL, NULL, '1', NULL, NULL),
	(96, '16.1.1', 'Information Security Incidents: Responsibilities and Procedures', NULL, NULL, '1', NULL, NULL),
	(97, '16.1.2', 'Information Security Incidents: Reporting of Security Events', NULL, NULL, '1', NULL, NULL),
	(98, '16.1.3', 'Information Security Incidents: Reporting of Security Weaknesses', NULL, NULL, '1', NULL, NULL),
	(99, '16.1.4', 'Information Security Incidents: Assessment and Action for Security Events', NULL, NULL, '1', NULL, NULL),
	(100, '16.1.5', 'Information Security Incidents: Response to Security Incidents', NULL, NULL, '1', NULL, NULL),
	(101, '16.1.6', 'Information Security Incidents: Learning from Incidents', NULL, NULL, '1', NULL, NULL),
	(102, '16.1.7', 'Information Security Incidents: Collection of Evidence', NULL, NULL, '1', NULL, NULL),
	(103, '17.1.1', 'Business Continuity Management: Planning Information Security Continuity', NULL, NULL, '1', NULL, NULL),
	(104, '17.1.2', 'Business Continuity Management: Implementing Information Security Continuity', NULL, NULL, '1', NULL, NULL),
	(105, '17.1.3', 'Business Continuity Management: Verify, Review & Evaluate Information Security Continuity', NULL, NULL, '1', NULL, NULL),
	(106, '17.2.1', 'Redundancy: Availability of Information Processing Facilities', NULL, NULL, '1', NULL, NULL),
	(107, '18.1.1', 'Compliance: Identification of Applicable Legislation & Contractual Requirements', NULL, NULL, '1', NULL, NULL),
	(108, '18.1.2', 'Compliance: Protection of Intellectual Property (IPR)', NULL, NULL, '1', NULL, NULL),
	(109, '18.1.3', 'Compliance: Protection of Documented Information', NULL, NULL, '1', NULL, NULL),
	(110, '18.1.4', 'Compliance: Privacy & Protection of Personal Information', NULL, NULL, '1', NULL, NULL),
	(111, '18.1.5', 'Compliance: Cryptographic Requirements', NULL, NULL, '1', NULL, NULL),
	(112, '18.2.1', 'Reviews: Independent Review of Information Security', NULL, NULL, '1', NULL, NULL),
	(113, '18.2.2', 'Reviews: Security Policies and Standards', NULL, NULL, '1', NULL, NULL),
	(114, '18.2.3', 'Reviews: Technical Compliance (e.g. Pen Test)', NULL, NULL, '1', NULL, NULL);
/*!40000 ALTER TABLE `controls` ENABLE KEYS */;

-- Dumping data for table isrm-2.control_document: ~0 rows (approximately)
/*!40000 ALTER TABLE `control_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_document` ENABLE KEYS */;

-- Dumping data for table isrm-2.control_evidence: ~2 rows (approximately)
/*!40000 ALTER TABLE `control_evidence` DISABLE KEYS */;
REPLACE INTO `control_evidence` (`control_id`, `evidence_id`) VALUES
	(1, 1),
	(1, 2);
/*!40000 ALTER TABLE `control_evidence` ENABLE KEYS */;

-- Dumping data for table isrm-2.control_threat: ~0 rows (approximately)
/*!40000 ALTER TABLE `control_threat` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_threat` ENABLE KEYS */;

-- Dumping data for table isrm-2.documents: ~0 rows (approximately)
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
REPLACE INTO `documents` (`id`, `name`, `desc`, `owner`, `reviewer`, `approver`, `reviewperiod`, `fid`, `created_at`, `updated_at`) VALUES
	(1, 'document 1', NULL, 1, 2, 1, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

-- Dumping data for table isrm-2.evidences: ~2 rows (approximately)
/*!40000 ALTER TABLE `evidences` DISABLE KEYS */;
REPLACE INTO `evidences` (`id`, `name`, `desc`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 'evidence 1', NULL, 1, NULL, NULL),
	(2, 'evidence 2', NULL, 1, NULL, NULL);
/*!40000 ALTER TABLE `evidences` ENABLE KEYS */;

-- Dumping data for table isrm-2.incidents: ~0 rows (approximately)
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;

-- Dumping data for table isrm-2.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
	(1, 'Information Security Manager', 'Information Security Manager', NULL, NULL),
	(2, 'IT Governance Manager', NULL, NULL, NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping data for table isrm-2.role_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
REPLACE INTO `role_user` (`role_id`, `user_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping data for table isrm-2.templates: ~2 rows (approximately)
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
REPLACE INTO `templates` (`id`, `name`, `desc`, `info`, `created_at`, `updated_at`) VALUES
	(1, 'template 1', NULL, '0', NULL, NULL),
	(2, 'template 2', NULL, '0', NULL, NULL);
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;

-- Dumping data for table isrm-2.template_threat: ~7 rows (approximately)
/*!40000 ALTER TABLE `template_threat` DISABLE KEYS */;
REPLACE INTO `template_threat` (`template_id`, `threat_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 2),
	(2, 4),
	(2, 5),
	(2, 1);
/*!40000 ALTER TABLE `template_threat` ENABLE KEYS */;

-- Dumping data for table isrm-2.threats: ~5 rows (approximately)
/*!40000 ALTER TABLE `threats` DISABLE KEYS */;
REPLACE INTO `threats` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
	(1, 'threat 1', NULL, NULL, NULL),
	(2, 'threat 2', NULL, NULL, NULL),
	(3, 'threat 3', NULL, NULL, NULL),
	(4, 'threat 4', NULL, NULL, NULL),
	(5, 'threat 5', NULL, NULL, NULL);
/*!40000 ALTER TABLE `threats` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

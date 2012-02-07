USE [tubs_debrief]
GO
/****** Object:  Schema [ref]    Script Date: 02/07/2012 10:54:37 ******/
CREATE SCHEMA [ref] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[ref_dq_cat]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_dq_cat](
	[cat_id] [int] NOT NULL,
	[q_cat_desc] [nvarchar](255) NULL,
	[gear_code] [nvarchar](1) NULL,
	[tstamp] [datetime2](0) NULL,
 CONSTRAINT [ref_dq_cat$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_debrief_status]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_debrief_status](
	[deb_status_id] [int] NOT NULL,
	[status_description] [nvarchar](50) NULL,
 CONSTRAINT [PK_debrief_status] PRIMARY KEY CLUSTERED 
(
	[deb_status_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_deb_dq_ratings]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_deb_dq_ratings](
	[deb_rating_id] [int] IDENTITY(1,1) NOT NULL,
	[versn_id] [int] NULL,
	[correct] [int] NULL,
	[incomplete] [int] NULL,
	[incomplete_retrieved] [int] NULL,
	[error] [int] NULL,
	[error_retrieved] [int] NULL,
	[x_factor] [int] NULL,
	[rgkt] [int] NULL,
	[weak] [int] NULL,
	[good] [int] NULL,
	[very_good] [int] NULL,
	[excellent] [int] NULL,
 CONSTRAINT [ref_deb_dq_ratings$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[deb_rating_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_answerspace]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_answerspace](
	[answerspace_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ref_answerspace] PRIMARY KEY CLUSTERED 
(
	[answerspace_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profiles]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profiles](
	[country_code] [nvarchar](2) NOT NULL,
	[revision] [nvarchar](6) NULL,
	[port_id] [int] NULL,
	[mapinfo_path] [nvarchar](100) NULL,
	[Backend] [nvarchar](100) NULL,
	[odbc_driver] [nvarchar](100) NULL,
	[UID] [nvarchar](20) NULL,
	[PWD] [nvarchar](20) NULL,
	[odbc_database] [nvarchar](100) NULL,
	[odbc_server] [nvarchar](100) NULL,
	[odbc_connect_string] [nvarchar](250) NULL,
	[VidMast] [numeric](6, 0) NULL,
 CONSTRAINT [PK_profiles] PRIMARY KEY CLUSTERED 
(
	[country_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[ports]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[ports](
	[port_id] [int] IDENTITY(1,1) NOT NULL,
	[port_name] [nvarchar](30) NULL,
	[country_code] [nvarchar](2) NULL,
	[location_code] [nvarchar](10) NULL,
	[port_lat] [nvarchar](9) NULL,
	[port_lon] [nvarchar](10) NULL,
	[alsocalled] [nvarchar](30) NULL,
	[ffa_portid] [numeric](3, 0) NULL,
 CONSTRAINT [PK_ports] PRIMARY KEY CLUSTERED 
(
	[port_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[gears]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[gears](
	[gear_code] [nvarchar](1) NOT NULL,
	[gear_code_2] [nvarchar](2) NULL,
	[gear_desc] [nvarchar](30) NULL,
	[mimra_type_code] [nvarchar](1) NULL,
 CONSTRAINT [PK_gears] PRIMARY KEY CLUSTERED 
(
	[gear_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[field_staff_type]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[field_staff_type](
	[staff_type_id] [int] NOT NULL,
	[staff_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_field_staff_type] PRIMARY KEY CLUSTERED 
(
	[staff_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[field_staff]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[field_staff](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[staff_code] [nvarchar](5) NULL,
	[first_name] [nvarchar](50) NULL,
	[family_name] [nvarchar](50) NULL,
	[birth_date] [datetime] NULL,
	[staff_type_id] [int] NULL,
	[obs_prg_code] [nvarchar](5) NULL,
	[entity_code] [nvarchar](2) NULL,
	[home_port_id] [int] NULL,
	[address1] [nvarchar](100) NULL,
	[address2] [nvarchar](100) NULL,
	[prv_id] [int] NULL,
	[phone] [nvarchar](30) NULL,
	[fax] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[contact_name] [nvarchar](50) NULL,
	[mst_id] [int] NULL,
	[marital_status] [nvarchar](50) NULL,
	[next_of_kin_name] [nvarchar](50) NULL,
	[next_of_kin_phone] [nvarchar](50) NULL,
	[passport_number] [nvarchar](50) NULL,
	[passport_name] [nvarchar](50) NULL,
	[passport_issue_date] [datetime] NULL,
	[passport_issue_place] [nvarchar](50) NULL,
	[passport_expiry_date] [datetime] NULL,
	[bank_name] [nvarchar](50) NULL,
	[bank_account_number] [nvarchar](50) NULL,
	[height] [nvarchar](50) NULL,
	[weight] [nvarchar](50) NULL,
	[shoe_size] [nvarchar](50) NULL,
	[shirt_size] [nvarchar](50) NULL,
	[trouser_size] [nvarchar](50) NULL,
	[kit_type] [nvarchar](50) NULL,
	[kit_issue_date] [datetime] NULL,
	[rating] [smallint] NULL,
	[entered_by] [nvarchar](50) NULL,
 CONSTRAINT [PK_field_staff] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_field_staff] UNIQUE NONCLUSTERED 
(
	[staff_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observer Programme, if staff is an observer' , @level0type=N'SCHEMA',@level0name=N'ref', @level1type=N'TABLE',@level1name=N'field_staff', @level2type=N'COLUMN',@level2name=N'obs_prg_code'
GO
/****** Object:  Table [dbo].[debriefing]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debriefing](
	[debriefing_id] [int] IDENTITY(1,1) NOT NULL,
	[tripno] [char](10) NULL,
	[alt_tripno] [nvarchar](11) NULL,
	[staff_code] [char](3) NULL,
	[vessel_id] [int] NULL,
	[obsprg_code] [char](4) NULL,
	[gear_code] [nvarchar](1) NOT NULL,
	[dep_date] [smalldatetime] NOT NULL,
	[dep_time] [char](4) NULL,
	[dep_port_id] [int] NOT NULL,
	[ret_date] [smalldatetime] NOT NULL,
	[ret_time] [char](4) NULL,
	[ret_port_id] [int] NOT NULL,
	[debriefer_code] [char](3) NULL,
	[debrief_start_date] [smalldatetime] NOT NULL,
	[debrief_start_time] [char](4) NULL,
	[debrief_end_date] [smalldatetime] NOT NULL,
	[debrief_end_time] [char](4) NULL,
	[debrief_status_id] [int] NULL,
	[country_code] [char](2) NULL,
	[versn_id] [int] NOT NULL,
	[comments] [nvarchar](255) NULL,
	[entered_by] [char](20) NULL,
	[entered_dtime] [smalldatetime] NULL,
 CONSTRAINT [debriefing$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[debriefing_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deb_evaluation]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deb_evaluation](
	[deb_evaluation_id] [int] IDENTITY(1,1) NOT NULL,
	[debriefing_id] [int] NULL,
	[question_no] [int] NULL,
	[correct] [bit] NULL,
	[incomplete] [bit] NULL,
	[incomplete_retrieved] [bit] NULL,
	[error] [bit] NULL,
	[error_retrieved] [bit] NULL,
	[x_factor] [bit] NULL,
	[rgkt] [bit] NULL,
	[did_not_encounter] [bit] NULL,
	[year_of_revision] [int] NULL,
	[weak] [bit] NULL,
	[good] [bit] NULL,
	[very_good] [bit] NULL,
	[excellent] [bit] NULL,
	[notes] [nvarchar](255) NULL,
	[processed_flag] [bit] NULL,
 CONSTRAINT [deb_evaluation$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[deb_evaluation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[countries]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ref].[countries](
	[country_code] [char](2) NOT NULL,
	[country_name] [nvarchar](50) NOT NULL,
	[int_direct_dial] [nvarchar](5) NULL,
	[adminby_country_code] [nvarchar](2) NULL,
	[notes] [nvarchar](50) NULL,
	[tstamp] [timestamp] NULL,
 CONSTRAINT [PK_entities] PRIMARY KEY CLUSTERED 
(
	[country_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ref].[vessels]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ref].[vessels](
	[vessel_id] [int] NOT NULL,
	[ffa_id] [int] NULL,
	[incountry_code] [nvarchar](50) NULL,
	[validfrom_date] [smalldatetime] NULL,
	[vty_code] [char](2) NOT NULL,
	[vessel_name] [nvarchar](50) NOT NULL,
	[wcpfc_number] [nvarchar](50) NULL,
	[ircs] [nvarchar](16) NULL,
	[vms_reg_number] [int] NULL,
	[imn] [nvarchar](12) NULL,
	[reg_port_id] [int] NULL,
	[reg_country_code] [char](2) NOT NULL,
	[reg_number] [nvarchar](20) NULL,
	[owner_name] [nvarchar](120) NULL,
	[owner_address1] [nvarchar](100) NULL,
	[owner_address2] [nvarchar](100) NULL,
	[owner_address_prv_id] [int] NULL,
	[owner_address_country_code] [char](2) NULL,
	[grt] [real] NULL,
	[length] [real] NULL,
	[year_built] [smallint] NULL,
	[engine_power] [decimal](8, 1) NULL,
	[power_units] [nvarchar](2) NULL,
	[fuel_capacity] [real] NULL,
	[capacity_units] [nvarchar](2) NULL,
	[hold_capacity] [real] NULL,
	[vessel_curst_id] [int] NULL,
	[speed] [nvarchar](50) NULL,
	[vessel_notes] [nvarchar](250) NULL,
	[image_path] [nvarchar](300) NULL,
	[entryorder_id] [int] IDENTITY(1,1) NOT NULL,
	[entered_by] [nvarchar](50) NULL,
	[entered_dtime] [smalldatetime] NULL,
	[tstamp] [timestamp] NOT NULL,
 CONSTRAINT [Vessels$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[vessel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ref].[vessel_types]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ref].[vessel_types](
	[vty_code] [char](2) NOT NULL,
	[vty_name] [nvarchar](50) NOT NULL,
	[tstamp] [timestamp] NULL,
 CONSTRAINT [PK_vessel_types] PRIMARY KEY CLUSTERED 
(
	[vty_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_preferences](
	[user_code] [nvarchar](15) NOT NULL,
	[postproc] [smallint] NULL,
	[staff] [smallint] NULL,
	[lookup] [smallint] NULL,
	[vessel] [smallint] NULL,
	[admin] [smallint] NULL,
	[observer] [smallint] NULL,
	[entry_id] [int] NULL,
 CONSTRAINT [pk_obsv_user_preferences] PRIMARY KEY CLUSTERED 
(
	[user_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tubs_passwords]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tubs_passwords](
	[text_id] [nvarchar](25) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[system_switchboard]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_switchboard](
	[sb_username] [nvarchar](50) NOT NULL,
	[sb_defaultprg_code] [char](4) NULL,
	[sb_vessel_id] [int] NULL,
	[sb_staff_id] [int] NULL,
	[sb_obsprg_code] [char](4) NULL,
	[sb_gear_code] [char](1) NULL,
	[sb_start_year] [int] NULL,
	[sb_end_year] [int] NULL,
	[sb_vty_code] [char](2) NULL,
	[sb_reg_country_code] [char](2) NULL,
	[sb_obs_country_code] [char](2) NULL,
	[sbrep_gear_code] [char](1) NULL,
	[sbrep_yearfrom] [int] NULL,
	[sbrep_yearto] [int] NULL,
	[sbrep_proglist] [nvarchar](200) NULL,
	[sbrep_flagList] [nvarchar](200) NULL,
	[sbrep_staff_id] [int] NULL,
	[sbrep_obstrip_id] [int] NULL,
	[sbrep_qry_start_date] [smalldatetime] NULL,
	[sbrep_qry_end_date] [smalldatetime] NULL,
	[sbrep_gear_code2] [char](1) NULL,
	[entered_dtime] [smalldatetime] NULL,
	[tstamp] [timestamp] NULL,
	[sb_obs_staff_codeold] [char](3) NULL,
	[sbrep_obs_staff_codeold] [char](3) NULL,
 CONSTRAINT [PK_System_SwitchBoard] PRIMARY KEY CLUSTERED 
(
	[sb_username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_housekeeping]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_housekeeping](
	[housek_id] [int] IDENTITY(1,1) NOT NULL,
	[next_new_vessel_id] [int] NULL,
	[vesselphoto_directory] [nvarchar](100) NULL,
	[obsphoto_directory] [nvarchar](100) NULL,
 CONSTRAINT [PK_system_housekeeping] PRIMARY KEY CLUSTERED 
(
	[housek_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_programs]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_programs](
	[obsprg_code] [char](4) NOT NULL,
	[description] [nvarchar](40) NOT NULL,
	[comments] [ntext] NULL,
	[tstamp] [timestamp] NOT NULL,
	[entered_by] [nvarchar](20) NULL,
	[entered_dtime] [smalldatetime] NULL,
 CONSTRAINT [ref_programs$primarykey] PRIMARY KEY CLUSTERED 
(
	[obsprg_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_ids]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_ids](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[source] [char](5) NOT NULL,
	[code_name] [varchar](50) NOT NULL,
	[code_notes] [varchar](200) NULL,
	[forms_used] [varchar](50) NULL,
	[inuse_yn] [bit] NULL,
	[entered_by] [varchar](20) NULL,
	[entered_dtime] [smalldatetime] NULL,
	[tstamp] [timestamp] NULL,
 CONSTRAINT [PK_codes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_dq_quest]    Script Date: 02/07/2012 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_dq_quest](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[versn_id] [int] NULL,
	[question_no] [int] NULL,
	[question_desc] [nvarchar](255) NULL,
	[question_code] [nvarchar](255) NULL,
	[cat_id] [int] NULL,
	[gear_code] [nvarchar](1) NULL,
	[tstamp] [datetime2](0) NULL,
	[answerspace_id] [int] NOT NULL,
 CONSTRAINT [ref_dq_quest$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_ref_dq_quest_answerspace]    Script Date: 02/07/2012 10:54:37 ******/
ALTER TABLE [dbo].[ref_dq_quest] ADD  CONSTRAINT [DF_ref_dq_quest_answerspace]  DEFAULT ((1)) FOR [answerspace_id]
GO
/****** Object:  ForeignKey [FK__ref_dq_qu__answe__52593CB8]    Script Date: 02/07/2012 10:54:37 ******/
ALTER TABLE [dbo].[ref_dq_quest]  WITH CHECK ADD FOREIGN KEY([answerspace_id])
REFERENCES [dbo].[ref_answerspace] ([answerspace_id])
GO
/****** Object:  ForeignKey [ref_dq_quest$ref_dq_catref_dq_quest]    Script Date: 02/07/2012 10:54:37 ******/
ALTER TABLE [dbo].[ref_dq_quest]  WITH NOCHECK ADD  CONSTRAINT [ref_dq_quest$ref_dq_catref_dq_quest] FOREIGN KEY([cat_id])
REFERENCES [dbo].[ref_dq_cat] ([cat_id])
GO
ALTER TABLE [dbo].[ref_dq_quest] CHECK CONSTRAINT [ref_dq_quest$ref_dq_catref_dq_quest]
GO

---
Author: Eric Thomas
Organization: PowerApps.Rocks!
Created Time and Date: Thu Feb 7 06:09:16 PST 2019
Last Updated: Sat Feb 23 11:32:21 PST 2019
Total Time:
Categories: PowerApps Development
Tags: meetup, real world powerapps, requirements
---

# Basic PowerApps Requirements Gathering

- ["Its the questions, its the questions boy, its the questions, its the questions, come on..." - Common](https://www.youtube.com/watch?v=7QUVNcQdTxo)

## General Considerations

### Project Management

- Who are the main stakeholders?
- Who are the ancilliary stakeholders?
- What are the weighted priority of each?
- What is the timeline for completion?

### Purpose

- What is the main goal of this application?
- What are some potential secondary goals of this application?
- What problems is this application solving?

### Users

- Who will be using this app?
- Can you describe how they would use the app?

### Permissions

- What user types will use this app?
    - Field user
    - Manager
    - Admin, etc.
- What types of permissions are required for each user?
    - Access permissions
        - Best handled with Active Directory dynamic groups
    - Per-screen permissions
        - Can be handled using LookUp()'s in the app to Sharepoint lists that admins manage.
        - Can be handled using O365Users() connector or User() functions
- How will permissions be managed for this application?

### Data

- Where will be the final resting place for this data?
    - Does it exist already?
    - If so, who is the Database contact?
- What is the database management system?
- Does this data require modeling?
    - If so, who is the Data Modeling contact?
- Is data On-Premise or Cloud hosted? Future?
- Is the data source accessible via API or direct DB connection?
- 

### Devices

- What type of hardware do users have? Future?
- What OS does hardware use?
- 

### Network

- How will the application be accessed (from LAN, from WiFi, VPN, etc.)?

### Security

- What type of security is/will be in place for the data source?
- Is Multi-factor authentication required? 
- Is OAUTH required to access data?

### Support

- How will this application be supported? By who?
- What will the end-to-end support scenario look like? 
- How will trouble tickets be tracked?

### User Interface

- What are special considerations for the UI (Large buttons, accessibility, etc.)?

## PowerApps-Specific Considerations

### Application Layout and Device Selection

- Which device layout and orientation the app will be presented in?
    - Phone (portrait) or Tablet (horizontal)
    - ![](2018-11-28-15-32-01.png)
    - It is currently quite a challenge to change this later down the road
- Will it be optimized for a specific device or display ratio?
    - iPad option
    - Changing this later could mess with measurements (X and Y values and any formulas based on specifics)
- Ensure customer understands that PowerApps are not currently "responsive" in the traditional sense.

### Offline Capabilities

- Will the application need to be used offline (without Cell or WiFi connection)?
    - Offline capabilities make for a more robust application which is available while offline
    - Tradoffs are increased complexity (~20% more complex)
    - [Recent SaveData()/LoadData() enhancements](https://powerapps.microsoft.com/en-us/blog/savedata-and-loaddata-unleashed/) make offline apps more feasible!

### External Users

- Are all users part of the organizations Active Directory?
    - PowerApps are only accessible by users within your organization (those with @mycompany.com email addresses)
    - External users will need to be incorporated into Active Directory or workarounds created

### Data Sources

- Where will data be hosted?
    - On-premise Hosted Data
        - Must utilize the On-Prem Data Gateway
        - Turnkey appliance; allows access to PowerApps/Flow/Power BI
        - Requires some configuration; relatively easy to setup
        - As of Feb 2019, any PowerApps users that access On-prem data, must have a PowerApps Plan 1 license @ $7/mo./user
            - Caveats apply
    - Cloud Hosted Data
        - Azure works well with PowerApps
        - Most major cloud providers can be leveraged
- Are Connectors available?
    - There are over 200 out-of-the-box Connectors (API wrappers) available
    - Custom Connectors can be developed relatively easy. These allow you to connect to most any REST endpoint.
    - As of Feb 2019, any PowerApps users that use Custom Connectors, must have a PowerApps Plan 1 license @ $7/mo./user
        - Caveats apply

## Graphics Optimization

- Have all assets been optimized?
    - PowerApps is a web application. The smaller the graphic assets, the better for performance
    - Original: 2.5MB, 6000px x 4000px
        - Using GIMP: 
            - Flatten image
            - Merge layers
    - Post-opto: 110kb, 1366px x 768px
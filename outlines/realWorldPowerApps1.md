# Real World PowerApps Session 1

- Friday, January 18, 2019, 06:00 PM - 08:00 PM PST

        Youngstown Cultural Art Center
        4408 Delridge Way SW
        Seattle, WA 98106

## Agenda

- Set up the ideal PowerApps development environment
- Define and select a real business problem to solve
- Find screen inspirations
- Create some data tables

## Synopsis (post-event)

Using the outline below and some consensus building exercises, the Seattle PowerAppers Meetup group agreed on the following plan of action for the next few Meetups.

### Mission: Collectively build a PowerApp that aims to increase efficiencies for small retail businesses

- Our initial domain will be a coffee shop
- Our initial use case will be:
    - A kiosk view where employees (or customers) can input an order (coffee/tea/pastries/etc.)
        - Potential text-in-order option
    - Barista views submitted orders and makes coffee
    - Barista completes order (flic button?)
    - Notification is sent (to a display/user/till employee/other)
    - Backend of the application records every relevant input
    - Report is generated for business owner with insightful aggregates/trends/etc.
- Inputs and outputs will be generalized wherever possible so the solution is applicable to other types of retail businesses

### Objectives: To maximize time, our approach will be:

- **Preparation before Meetup:**
    - Research any solutions identifed during previous Meetup
    - Using PowerApps, mockup the next phase of the application
    - Communicate outline of next phase to Meetup attendees
- **Execution during Meetup:**
    - Present the mockup and discuss the goals of current phase
    - Build it collectively (Meetup leader presents, together we code so as to have one master copy)
    - Export master copy of app and post to Github for Meetup Attendees to upload to their respective environments
    - Save time at the end of each session for "show and tell"
- **Follow up:**
    - Document lessons learned and any homework for Meetup Attendees
    - Communicate this to Meetup Attendees
    - Repeat process until app is "complete" as we define it

### Output: To be successful, our outcome should consist of:

- A respectful, fun and engaging Meetup!
- **A working, real-world PowerApp...**
    - **[...uploaded to the PowerApps Community App Gallery](https://powerusers.microsoft.com/t5/Community-Apps-Gallery/bd-p/AppFeedbackGallery)**
    - **[...with a PowerApps Community Blog Post describing the experience](https://powerusers.microsoft.com/t5/PowerApps-Community-Blog/bg-p/PowerAppsBlog)**
- **A thorough exposure to diverse technologies including:**
    - PowerPlatform
        - PowerApps
        - PowerBI
        - Flow
    - Excel Online, Sharepoint, Azure SQL
    - API's and Custom Connectors
    - User Interface and User Experience considerations
    - IOT device integration
---

## Prompts for consensus building exercises

### Determine the Best Approach:

#### Option 1: CHOSEN

- Work on app collectively during Meetup sessions
- App is exported and shared with everyone at end of each session
- Each user imports latest version of app
- NOTE: Everyone is free to use their own services
    - Whether SQL, Sharepoint, etc. is chosen.
- Collectively bring enhancements to each meetup

#### Option 2:

- Work on apps individually during Meetup sessions
- Apps remain in each users own environment
- NOTE: Same services as above required 
- Use Excel as a datasource

#### Option 3:

- Work from a centralized environment (@PowerApps.Rocks)
- Everyone is an "owner" of their own app
- Risky from a trust perspective
- Everyone will need to pony up ~$30 / month
- On-boarding new folks will be a challenge
- Other?

### Discuss Desired Output From This Effort

- Working application that solves a realistic business problem
- Exposure to diverse technologies:
    - API's
    - Reporting
    - UI / UX
- [PA Community application](https://powerusers.microsoft.com/t5/Community-Apps-Gallery/bd-p/AppFeedbackGallery)
- [PA Community blog post](https://powerusers.microsoft.com/t5/PowerApps-Community-Blog/bg-p/PowerAppsBlog)
- Other?

### Brainstorm and Select a Real World Problem

- Location-based App
    - [Example: UW Scout](https://scout.uw.edu/seattle/)
- Real Estate Home Showing App
    - Show on a map where showings are occurring, logistics, etc.
- Geographical Survey (homelessness, etc.)
    - App to survey homelessness in Seattle
    - Match people with mentors and resources
- Volunteer Coordination App
    - App to assist in matching skills with needs
    - Sign up
- Coffee Ordering App
    - App for ordering coffee
- Quantified Self
    - App to track personal gratitudes, habits, food, etc.
- Surface and Assign App
    - App to "find" information in Sharepoint sites and notify people

- **SELECTED: Small retail business management.**
    - Usability, UI / UX
    - Translation of orders from other languages
    - Inventory management
    - Notifications to workers (shift coverage, order delivery, ect.)
    - IOT sensor network (fridge is down, order is ready, bathroom has been occupied for 20+ mins, etc.)
    - Shift schedules

### Discuss Data Source Specifics:

- Begin with the most portable
    - Excel
- Advance to more robust as needed
    - Azure SQL
    - Sharepoint

### Discuss Connectors:

- Custom Connectors- Azure API
    - Weather
    - Timezone
    - Location
- Vendor - ordering inventory

### Discuss Software Integrations:

- Power BI for reporting to the business owner
- Flow for notifications, wiring together internals
- Excel Online for hosting data source
- Sharepoint for hosting data source (future)
- Azure for hosting data source (future) and providing API's

---

Ran out of time to discuss the following: 

### Discuss Hardware Integrations:

- [Flic button](https://flic.io/shop/flic-1pack) could be used to complete an order (think "That was easy!" button)
    - Eric ordered a single flic button to experiment with
- A display of order status to customers and till worker
    - Eric has a few Nexus 5 Tablets we could experiment with for this
- Other?

### Additional capabilities:

- Offline?: Not needed for this use case
- PDF's for schedules, reports and record keeping
- Other?

### Discuss Form Factor:

This is a critical consideration. Will the app be portrait (Phone) or landscape (Tablet) orientation?

- Phone
- Tablet
- Both?

### Screens:

- Inspiration
- Landing screen
- Input screen
- Review screen

### Data tables:

- Keep it simple for now
    - Denormalized, in-app relationship handling
- Move to complex down the road
    - Normalized, PK's/FK's/etc.
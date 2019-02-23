# Basic PowerApps Requirements Gathering

- Updated: Thu Feb 7 06:09:16 PST 2019

## PowerApps-Specific Considerations

### Application Layout and Device Selection

- Which device layout and orientation the app will be presented in?
    - Phone (portrait) or Tablet (horizontal)
    - ![](2018-11-28-15-32-01.png)
    - It is currently quite a challenge to change this later down the road
- Will it be optimized for a specific device or display ratio?
    - iPad option
    - Changing this later could mess with measurements (X and Y values and any formulas based on specifics)

### Offline Capabilities

- Will the application need to be used offline (without Cell or WiFi connection)?
    - Offline capabilities make for a more robust application which is available while offline
    - Tradoffs are increased complexity (~20% more complex)
    - [Recent SaveData()/LoadData() enhancements](https://powerapps.microsoft.com/en-us/blog/savedata-and-loaddata-unleashed/) make offline apps more feasible

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
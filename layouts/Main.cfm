<cfoutput>
<!DOCTYPE html>
<html class="h-full bg-grey-lighter">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>Quick Tailwind Inertia Template</title>
    <cfif getSetting( "environment" ) EQ "production">
        <cfset manifest = deserializeJSON( fileRead( expandPath( "/includes/build/manifest.json" ) ) ) />
        <script type="module" src="/includes/build/#manifest['resources/assets/js/app.js']['file']#"></script>
        <cfif structKeyExists( manifest['resources/assets/js/app.js'], "css" )>
            <link rel="stylesheet" href="/includes/build/#manifest['resources/assets/js/app.js']['css'][1]#">
        </cfif>
    <cfelse>
        <script type="module" src="http://localhost:3000/@vite/client"></script>
        <script type="module" src="http://localhost:3000/resources/assets/js/app.js"></script>
    </cfif>
</head>
<body class="font-sans leading-none text-grey-darkest antialiased">
    <div>
        #renderView()#
    </div>
</body>
</html>
</cfoutput>

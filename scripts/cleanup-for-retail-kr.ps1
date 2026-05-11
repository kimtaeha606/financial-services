# Cleanup script for Korean retail investor version
# Run this in PowerShell to remove institutional-only components

$dirs = @(
    # Vertical plugins (institutional only)
    "C:\financial-services\plugins\vertical-plugins\investment-banking",
    "C:\financial-services\plugins\vertical-plugins\private-equity",
    "C:\financial-services\plugins\vertical-plugins\fund-admin",
    "C:\financial-services\plugins\vertical-plugins\operations",

    # Agent plugins (institutional only)
    "C:\financial-services\plugins\agent-plugins\pitch-agent",
    "C:\financial-services\plugins\agent-plugins\meeting-prep-agent",
    "C:\financial-services\plugins\agent-plugins\gl-reconciler",
    "C:\financial-services\plugins\agent-plugins\month-end-closer",
    "C:\financial-services\plugins\agent-plugins\statement-auditor",
    "C:\financial-services\plugins\agent-plugins\kyc-screener",
    "C:\financial-services\plugins\agent-plugins\valuation-reviewer",

    # Managed agent cookbooks (institutional only)
    "C:\financial-services\managed-agent-cookbooks\pitch-agent",
    "C:\financial-services\managed-agent-cookbooks\meeting-prep-agent",
    "C:\financial-services\managed-agent-cookbooks\gl-reconciler",
    "C:\financial-services\managed-agent-cookbooks\month-end-closer",
    "C:\financial-services\managed-agent-cookbooks\statement-auditor",
    "C:\financial-services\managed-agent-cookbooks\kyc-screener",
    "C:\financial-services\managed-agent-cookbooks\valuation-reviewer",

    # Partner-built (global institutional data)
    "C:\financial-services\plugins\partner-built\spglobal",
    "C:\financial-services\plugins\partner-built\lseg",

    # Skills to remove from financial-analysis
    "C:\financial-services\plugins\vertical-plugins\financial-analysis\skills\lbo-model",
    "C:\financial-services\plugins\vertical-plugins\financial-analysis\skills\ib-check-deck",
    "C:\financial-services\plugins\vertical-plugins\financial-analysis\skills\ppt-template-creator",
    "C:\financial-services\plugins\vertical-plugins\financial-analysis\skills\skill-creator",

    # Skills to remove from equity-research
    "C:\financial-services\plugins\vertical-plugins\equity-research\skills\initiating-coverage",

    # Skills to remove from wealth-management
    "C:\financial-services\plugins\vertical-plugins\wealth-management\skills\client-review",
    "C:\financial-services\plugins\vertical-plugins\wealth-management\skills\client-report",
    "C:\financial-services\plugins\vertical-plugins\wealth-management\skills\investment-proposal"
)

foreach ($d in $dirs) {
    if (Test-Path $d) {
        Remove-Item -Recurse -Force $d
        Write-Host "Deleted: $d"
    } else {
        Write-Host "Not found (already removed?): $d"
    }
}

Write-Host "`nCleanup complete! Remaining structure is for Korean retail investors."


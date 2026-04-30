.class public Lcom/adobe/creativeapps/settings/utils/BehanceSource;
.super Ljava/lang/Object;
.source "BehanceSource.java"


# static fields
.field private static instance:Lcom/adobe/creativeapps/settings/utils/BehanceSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/utils/BehanceSource;-><init>()V

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource;->instance:Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/adobe/creativeapps/settings/utils/BehanceSource;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource;->instance:Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/utils/BehanceSource;-><init>()V

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource;->instance:Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    .line 29
    :cond_0
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource;->instance:Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    return-object v0
.end method


# virtual methods
.method public final getBehanceAccountDetails(Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativeapps/settings/utils/BehanceSource$1;-><init>(Lcom/adobe/creativeapps/settings/utils/BehanceSource;Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;)V

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getBehanceUserProfile(Lcom/adobe/creativesdk/behance/IAdobeBehanceSDKGetUserProfileListener;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

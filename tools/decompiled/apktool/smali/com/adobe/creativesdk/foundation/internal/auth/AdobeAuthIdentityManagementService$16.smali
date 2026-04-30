.class synthetic Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;
.super Ljava/lang/Object;
.source "AdobeAuthIdentityManagementService.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIdentityManagementService$TokenType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2002
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentTestUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentTestUS2:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIdentityManagementServiceUndefined:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 1819
    :goto_4
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIdentityManagementService$TokenType:[I

    :try_start_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIdentityManagementService$TokenType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->DeviceToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIdentityManagementService$TokenType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->AccessToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIdentityManagementService$TokenType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->RefreshToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 2002
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method

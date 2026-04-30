.class public final enum Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
.super Ljava/lang/Enum;
.source "SharedLinkSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

.field public static final enum INVALID_SETTINGS:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

.field public static final enum NOT_AUTHORIZED:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    const-string/jumbo v1, "INVALID_SETTINGS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->INVALID_SETTINGS:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    const-string/jumbo v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->NOT_AUTHORIZED:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->INVALID_SETTINGS:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->NOT_AUTHORIZED:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

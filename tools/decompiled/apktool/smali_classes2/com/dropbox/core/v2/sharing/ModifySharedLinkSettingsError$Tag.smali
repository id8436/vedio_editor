.class public final enum Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
.super Ljava/lang/Enum;
.source "ModifySharedLinkSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field public static final enum EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field public static final enum SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field public static final enum SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field public static final enum SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field public static final enum UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const-string/jumbo v1, "SHARED_LINK_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const-string/jumbo v1, "SHARED_LINK_ACCESS_DENIED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const-string/jumbo v1, "UNSUPPORTED_LINK_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const-string/jumbo v1, "SETTINGS_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const-string/jumbo v1, "EMAIL_NOT_VERIFIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
.super Ljava/lang/Enum;
.source "CreateSharedLinkWithSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field public static final enum ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field public static final enum EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field public static final enum PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field public static final enum SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field public static final enum SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const-string/jumbo v1, "PATH"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const-string/jumbo v1, "EMAIL_NOT_VERIFIED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const-string/jumbo v1, "SHARED_LINK_ALREADY_EXISTS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const-string/jumbo v1, "SETTINGS_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const-string/jumbo v1, "ACCESS_DENIED"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/teamlog/EventCategory;
.super Ljava/lang/Enum;
.source "EventCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum ACCOUNT_CAPTURE:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum ADMINISTRATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum CONTENT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DEVICE_APPROVALS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum EMM:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum ERRORS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SESSIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARED_FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARED_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARING_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "ACCOUNT_CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->ACCOUNT_CAPTURE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "ADMINISTRATION"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->ADMINISTRATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "APPS"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "AUTHENTICATION"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "COMMENTS"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "CONTENT_ACCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->CONTENT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "DEVICES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "DEVICE_APPROVALS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICE_APPROVALS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "DOMAINS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "EMM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->EMM:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "ERRORS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->ERRORS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "FILES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "FILE_OPERATIONS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "FILE_REQUESTS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "GROUPS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "LOGINS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "MEMBERS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "PAPER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "PASSWORDS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "REPORTS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SESSIONS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SESSIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SHARED_FILES"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 124
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SHARED_FOLDERS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 128
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SHARED_LINKS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SHARING"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 137
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SHARING_POLICIES"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 142
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "SSO"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "TEAM_FOLDERS"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 150
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "TEAM_POLICIES"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 154
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "TEAM_PROFILE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "TFA"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 167
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/EventCategory;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->ACCOUNT_CAPTURE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->ADMINISTRATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->CONTENT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICE_APPROVALS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->EMM:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->ERRORS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SESSIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->$VALUES:[Lcom/dropbox/core/v2/teamlog/EventCategory;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->$VALUES:[Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/EventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object v0
.end method

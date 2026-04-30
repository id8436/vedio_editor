.class public final enum Lcom/dropbox/core/v2/team/MobileClientPlatform;
.super Ljava/lang/Enum;
.source "MobileClientPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/MobileClientPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum ANDROID:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum BLACKBERRY:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum IPAD:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum IPHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum WINDOWS_PHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string/jumbo v1, "IPHONE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string/jumbo v1, "IPAD"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPAD:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string/jumbo v1, "ANDROID"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->ANDROID:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string/jumbo v1, "WINDOWS_PHONE"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->WINDOWS_PHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string/jumbo v1, "BLACKBERRY"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->BLACKBERRY:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->OTHER:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/team/MobileClientPlatform;

    sget-object v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPAD:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;->ANDROID:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;->WINDOWS_PHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;->BLACKBERRY:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->OTHER:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->$VALUES:[Lcom/dropbox/core/v2/team/MobileClientPlatform;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->$VALUES:[Lcom/dropbox/core/v2/team/MobileClientPlatform;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MobileClientPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object v0
.end method

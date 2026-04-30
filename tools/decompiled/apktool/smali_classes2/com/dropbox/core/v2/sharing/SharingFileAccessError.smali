.class public final enum Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
.super Ljava/lang/Enum;
.source "SharingFileAccessError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharingFileAccessError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field public static final enum INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field public static final enum INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field public static final enum INVALID_FILE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field public static final enum IS_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;


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
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const-string/jumbo v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const-string/jumbo v1, "INVALID_FILE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INVALID_FILE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const-string/jumbo v1, "IS_FOLDER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->IS_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const-string/jumbo v1, "INSIDE_PUBLIC_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const-string/jumbo v1, "INSIDE_OSX_PACKAGE"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->OTHER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INVALID_FILE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->IS_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->OTHER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

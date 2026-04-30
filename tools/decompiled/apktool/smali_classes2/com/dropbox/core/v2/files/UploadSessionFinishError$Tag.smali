.class public final enum Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
.super Ljava/lang/Enum;
.source "UploadSessionFinishError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field public static final enum LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field public static final enum PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field public static final enum TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field public static final enum TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const-string/jumbo v1, "LOOKUP_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const-string/jumbo v1, "PATH"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const-string/jumbo v1, "TOO_MANY_SHARED_FOLDER_TARGETS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const-string/jumbo v1, "TOO_MANY_WRITE_OPERATIONS"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    return-object v0
.end method

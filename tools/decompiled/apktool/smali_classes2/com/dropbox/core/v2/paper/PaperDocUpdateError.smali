.class public final enum Lcom/dropbox/core/v2/paper/PaperDocUpdateError;
.super Ljava/lang/Enum;
.source "PaperDocUpdateError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocUpdateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum DOC_DELETED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

.field public static final enum REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;


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
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "INSUFFICIENT_PERMISSIONS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "DOC_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "CONTENT_MALFORMED"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "REVISION_MISMATCH"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "DOC_LENGTH_EXCEEDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "IMAGE_SIZE_EXCEEDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "DOC_ARCHIVED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    const-string/jumbo v1, "DOC_DELETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_DELETED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_DELETED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->$VALUES:[Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/PaperDocUpdateError;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/PaperDocUpdateError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->$VALUES:[Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/paper/PaperDocCreateError;
.super Ljava/lang/Enum;
.source "PaperDocCreateError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocCreateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;


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
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string/jumbo v1, "INSUFFICIENT_PERMISSIONS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string/jumbo v1, "CONTENT_MALFORMED"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string/jumbo v1, "FOLDER_NOT_FOUND"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string/jumbo v1, "DOC_LENGTH_EXCEEDED"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string/jumbo v1, "IMAGE_SIZE_EXCEEDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->$VALUES:[Lcom/dropbox/core/v2/paper/PaperDocCreateError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/PaperDocCreateError;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/PaperDocCreateError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->$VALUES:[Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/PaperDocCreateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    return-object v0
.end method

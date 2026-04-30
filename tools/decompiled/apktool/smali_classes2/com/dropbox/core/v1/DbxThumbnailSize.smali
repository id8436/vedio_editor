.class public Lcom/dropbox/core/v1/DbxThumbnailSize;
.super Ljava/lang/Object;
.source "DbxThumbnailSize.java"


# static fields
.field public static final w1024h768:Lcom/dropbox/core/v1/DbxThumbnailSize;

.field public static final w128h128:Lcom/dropbox/core/v1/DbxThumbnailSize;

.field public static final w32h32:Lcom/dropbox/core/v1/DbxThumbnailSize;

.field public static final w640h480:Lcom/dropbox/core/v1/DbxThumbnailSize;

.field public static final w64h64:Lcom/dropbox/core/v1/DbxThumbnailSize;


# instance fields
.field public final height:I

.field public final ident:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x40

    const/16 v2, 0x20

    .line 27
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailSize;

    const-string/jumbo v1, "xs"

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v1/DbxThumbnailSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailSize;->w32h32:Lcom/dropbox/core/v1/DbxThumbnailSize;

    .line 32
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailSize;

    const-string/jumbo v1, "s"

    invoke-direct {v0, v1, v3, v3}, Lcom/dropbox/core/v1/DbxThumbnailSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailSize;->w64h64:Lcom/dropbox/core/v1/DbxThumbnailSize;

    .line 37
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailSize;

    const-string/jumbo v1, "m"

    invoke-direct {v0, v1, v4, v4}, Lcom/dropbox/core/v1/DbxThumbnailSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailSize;->w128h128:Lcom/dropbox/core/v1/DbxThumbnailSize;

    .line 42
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailSize;

    const-string/jumbo v1, "l"

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v1/DbxThumbnailSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailSize;->w640h480:Lcom/dropbox/core/v1/DbxThumbnailSize;

    .line 47
    new-instance v0, Lcom/dropbox/core/v1/DbxThumbnailSize;

    const-string/jumbo v1, "xl"

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v1/DbxThumbnailSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/core/v1/DbxThumbnailSize;->w1024h768:Lcom/dropbox/core/v1/DbxThumbnailSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxThumbnailSize;->ident:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/dropbox/core/v1/DbxThumbnailSize;->width:I

    .line 16
    iput p3, p0, Lcom/dropbox/core/v1/DbxThumbnailSize;->height:I

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxThumbnailSize;->ident:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dropbox/core/v1/DbxThumbnailSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dropbox/core/v1/DbxThumbnailSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

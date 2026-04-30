.class public final enum Lcom/facebook/imagepipeline/l/c;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/imagepipeline/l/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imagepipeline/l/c;

.field public static final enum b:Lcom/facebook/imagepipeline/l/c;

.field public static final enum c:Lcom/facebook/imagepipeline/l/c;

.field public static final enum d:Lcom/facebook/imagepipeline/l/c;

.field private static final synthetic f:[Lcom/facebook/imagepipeline/l/c;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 233
    new-instance v0, Lcom/facebook/imagepipeline/l/c;

    const-string/jumbo v1, "FULL_FETCH"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/imagepipeline/l/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/imagepipeline/l/c;->a:Lcom/facebook/imagepipeline/l/c;

    .line 236
    new-instance v0, Lcom/facebook/imagepipeline/l/c;

    const-string/jumbo v1, "DISK_CACHE"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/l/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/imagepipeline/l/c;->b:Lcom/facebook/imagepipeline/l/c;

    .line 239
    new-instance v0, Lcom/facebook/imagepipeline/l/c;

    const-string/jumbo v1, "ENCODED_MEMORY_CACHE"

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/imagepipeline/l/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/imagepipeline/l/c;->c:Lcom/facebook/imagepipeline/l/c;

    .line 242
    new-instance v0, Lcom/facebook/imagepipeline/l/c;

    const-string/jumbo v1, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v1, v4, v6}, Lcom/facebook/imagepipeline/l/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/imagepipeline/l/c;->d:Lcom/facebook/imagepipeline/l/c;

    .line 231
    new-array v0, v6, [Lcom/facebook/imagepipeline/l/c;

    sget-object v1, Lcom/facebook/imagepipeline/l/c;->a:Lcom/facebook/imagepipeline/l/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/imagepipeline/l/c;->b:Lcom/facebook/imagepipeline/l/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/l/c;->c:Lcom/facebook/imagepipeline/l/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imagepipeline/l/c;->d:Lcom/facebook/imagepipeline/l/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/imagepipeline/l/c;->f:[Lcom/facebook/imagepipeline/l/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput p3, p0, Lcom/facebook/imagepipeline/l/c;->e:I

    .line 248
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/l/c;Lcom/facebook/imagepipeline/l/c;)Lcom/facebook/imagepipeline/l/c;
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/l/c;
    .locals 1

    .prologue
    .line 231
    const-class v0, Lcom/facebook/imagepipeline/l/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/l/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/imagepipeline/l/c;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/facebook/imagepipeline/l/c;->f:[Lcom/facebook/imagepipeline/l/c;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/l/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/l/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/facebook/imagepipeline/l/c;->e:I

    return v0
.end method

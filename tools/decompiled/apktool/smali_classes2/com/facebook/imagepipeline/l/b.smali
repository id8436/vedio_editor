.class public final enum Lcom/facebook/imagepipeline/l/b;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/imagepipeline/l/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imagepipeline/l/b;

.field public static final enum b:Lcom/facebook/imagepipeline/l/b;

.field private static final synthetic c:[Lcom/facebook/imagepipeline/l/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    new-instance v0, Lcom/facebook/imagepipeline/l/b;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/l/b;->a:Lcom/facebook/imagepipeline/l/b;

    .line 224
    new-instance v0, Lcom/facebook/imagepipeline/l/b;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/imagepipeline/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/l/b;->b:Lcom/facebook/imagepipeline/l/b;

    .line 219
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/imagepipeline/l/b;

    sget-object v1, Lcom/facebook/imagepipeline/l/b;->a:Lcom/facebook/imagepipeline/l/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/l/b;->b:Lcom/facebook/imagepipeline/l/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/imagepipeline/l/b;->c:[Lcom/facebook/imagepipeline/l/b;

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
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/l/b;
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/facebook/imagepipeline/l/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/l/b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/imagepipeline/l/b;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/facebook/imagepipeline/l/b;->c:[Lcom/facebook/imagepipeline/l/b;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/l/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/l/b;

    return-object v0
.end method

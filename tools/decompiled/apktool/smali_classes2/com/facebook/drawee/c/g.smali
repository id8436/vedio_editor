.class public final enum Lcom/facebook/drawee/c/g;
.super Ljava/lang/Enum;
.source "AbstractDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/drawee/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/drawee/c/g;

.field public static final enum b:Lcom/facebook/drawee/c/g;

.field public static final enum c:Lcom/facebook/drawee/c/g;

.field private static final synthetic d:[Lcom/facebook/drawee/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 463
    new-instance v0, Lcom/facebook/drawee/c/g;

    const-string/jumbo v1, "FULL_FETCH"

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/c/g;->a:Lcom/facebook/drawee/c/g;

    .line 466
    new-instance v0, Lcom/facebook/drawee/c/g;

    const-string/jumbo v1, "DISK_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/drawee/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/c/g;->b:Lcom/facebook/drawee/c/g;

    .line 469
    new-instance v0, Lcom/facebook/drawee/c/g;

    const-string/jumbo v1, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/drawee/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/c/g;->c:Lcom/facebook/drawee/c/g;

    .line 461
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/drawee/c/g;

    sget-object v1, Lcom/facebook/drawee/c/g;->a:Lcom/facebook/drawee/c/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/drawee/c/g;->b:Lcom/facebook/drawee/c/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/drawee/c/g;->c:Lcom/facebook/drawee/c/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/drawee/c/g;->d:[Lcom/facebook/drawee/c/g;

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
    .line 461
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/c/g;
    .locals 1

    .prologue
    .line 461
    const-class v0, Lcom/facebook/drawee/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/c/g;

    return-object v0
.end method

.method public static values()[Lcom/facebook/drawee/c/g;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/facebook/drawee/c/g;->d:[Lcom/facebook/drawee/c/g;

    invoke-virtual {v0}, [Lcom/facebook/drawee/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/c/g;

    return-object v0
.end method

.class final enum Lcom/facebook/c/b/f;
.super Ljava/lang/Enum;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/c/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/c/b/f;

.field public static final enum b:Lcom/facebook/c/b/f;

.field private static final synthetic d:[Lcom/facebook/c/b/f;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 575
    new-instance v0, Lcom/facebook/c/b/f;

    const-string/jumbo v1, "CONTENT"

    const-string/jumbo v2, ".cnt"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/c/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/c/b/f;->a:Lcom/facebook/c/b/f;

    .line 576
    new-instance v0, Lcom/facebook/c/b/f;

    const-string/jumbo v1, "TEMP"

    const-string/jumbo v2, ".tmp"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/c/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/c/b/f;->b:Lcom/facebook/c/b/f;

    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/c/b/f;

    sget-object v1, Lcom/facebook/c/b/f;->a:Lcom/facebook/c/b/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/c/b/f;->b:Lcom/facebook/c/b/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/c/b/f;->d:[Lcom/facebook/c/b/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 581
    iput-object p3, p0, Lcom/facebook/c/b/f;->c:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/c/b/f;
    .locals 1

    .prologue
    .line 585
    const-string/jumbo v0, ".cnt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Lcom/facebook/c/b/f;->a:Lcom/facebook/c/b/f;

    .line 590
    :goto_0
    return-object v0

    .line 587
    :cond_0
    const-string/jumbo v0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    sget-object v0, Lcom/facebook/c/b/f;->b:Lcom/facebook/c/b/f;

    goto :goto_0

    .line 590
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/c/b/f;
    .locals 1

    .prologue
    .line 574
    const-class v0, Lcom/facebook/c/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b/f;

    return-object v0
.end method

.method public static values()[Lcom/facebook/c/b/f;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/facebook/c/b/f;->d:[Lcom/facebook/c/b/f;

    invoke-virtual {v0}, [Lcom/facebook/c/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/c/b/f;

    return-object v0
.end method

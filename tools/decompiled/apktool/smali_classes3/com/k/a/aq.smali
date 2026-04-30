.class public final enum Lcom/k/a/aq;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/k/a/aq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/k/a/aq;

.field public static final enum b:Lcom/k/a/aq;

.field public static final enum c:Lcom/k/a/aq;

.field private static final synthetic e:[Lcom/k/a/aq;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 855
    new-instance v0, Lcom/k/a/aq;

    const-string/jumbo v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/k/a/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/k/a/aq;->a:Lcom/k/a/aq;

    .line 856
    new-instance v0, Lcom/k/a/aq;

    const-string/jumbo v1, "DISK"

    const v2, -0xffff01

    invoke-direct {v0, v1, v4, v2}, Lcom/k/a/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/k/a/aq;->b:Lcom/k/a/aq;

    .line 857
    new-instance v0, Lcom/k/a/aq;

    const-string/jumbo v1, "NETWORK"

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v5, v2}, Lcom/k/a/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/k/a/aq;->c:Lcom/k/a/aq;

    .line 854
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/k/a/aq;

    sget-object v1, Lcom/k/a/aq;->a:Lcom/k/a/aq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/k/a/aq;->b:Lcom/k/a/aq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/k/a/aq;->c:Lcom/k/a/aq;

    aput-object v1, v0, v5

    sput-object v0, Lcom/k/a/aq;->e:[Lcom/k/a/aq;

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
    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput p3, p0, Lcom/k/a/aq;->d:I

    .line 863
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/k/a/aq;
    .locals 1

    .prologue
    .line 854
    const-class v0, Lcom/k/a/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/k/a/aq;

    return-object v0
.end method

.method public static values()[Lcom/k/a/aq;
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lcom/k/a/aq;->e:[Lcom/k/a/aq;

    invoke-virtual {v0}, [Lcom/k/a/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/k/a/aq;

    return-object v0
.end method

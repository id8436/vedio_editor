.class final enum Lcom/facebook/login/m;
.super Ljava/lang/Enum;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/m;

.field public static final enum b:Lcom/facebook/login/m;

.field public static final enum c:Lcom/facebook/login/m;

.field private static final synthetic e:[Lcom/facebook/login/m;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 533
    new-instance v0, Lcom/facebook/login/m;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "success"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/login/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/m;->a:Lcom/facebook/login/m;

    .line 534
    new-instance v0, Lcom/facebook/login/m;

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/login/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    .line 535
    new-instance v0, Lcom/facebook/login/m;

    const-string/jumbo v1, "ERROR"

    const-string/jumbo v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/login/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/m;->c:Lcom/facebook/login/m;

    .line 532
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/login/m;

    sget-object v1, Lcom/facebook/login/m;->a:Lcom/facebook/login/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/login/m;->c:Lcom/facebook/login/m;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/login/m;->e:[Lcom/facebook/login/m;

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
    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 540
    iput-object p3, p0, Lcom/facebook/login/m;->d:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/m;
    .locals 1

    .prologue
    .line 532
    const-class v0, Lcom/facebook/login/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/m;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/m;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lcom/facebook/login/m;->e:[Lcom/facebook/login/m;

    invoke-virtual {v0}, [Lcom/facebook/login/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/m;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/facebook/login/m;->d:Ljava/lang/String;

    return-object v0
.end method

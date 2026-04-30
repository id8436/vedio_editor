.class public final enum Lcom/c/a/a/a/a;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/a/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/a/a/a;

.field public static final enum b:Lcom/c/a/a/a/a;

.field public static final enum c:Lcom/c/a/a/a/a;

.field private static final synthetic e:[Lcom/c/a/a/a/a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/c/a/a/a/a;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/c/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/c/a/a/a/a;->a:Lcom/c/a/a/a/a;

    .line 30
    new-instance v0, Lcom/c/a/a/a/a;

    const-string/jumbo v1, "PREFIX"

    const-string/jumbo v2, ":"

    invoke-direct {v0, v1, v4, v2}, Lcom/c/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    .line 31
    new-instance v0, Lcom/c/a/a/a/a;

    const-string/jumbo v1, "EXPLODE"

    const-string/jumbo v2, "*"

    invoke-direct {v0, v1, v5, v2}, Lcom/c/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/a/a/a/a;

    sget-object v1, Lcom/c/a/a/a/a;->a:Lcom/c/a/a/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/a/a/a/a;->e:[Lcom/c/a/a/a/a;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/c/a/a/a/a;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/a/a/a;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/c/a/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/a;

    return-object v0
.end method

.method public static values()[Lcom/c/a/a/a/a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/c/a/a/a/a;->e:[Lcom/c/a/a/a/a;

    invoke-virtual {v0}, [Lcom/c/a/a/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

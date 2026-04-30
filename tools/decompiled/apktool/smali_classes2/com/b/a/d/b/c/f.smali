.class public enum Lcom/b/a/d/b/c/f;
.super Ljava/lang/Enum;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/d/b/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/d/b/c/f;

.field public static final enum b:Lcom/b/a/d/b/c/f;

.field public static final enum c:Lcom/b/a/d/b/c/f;

.field private static final synthetic d:[Lcom/b/a/d/b/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/b/a/d/b/c/f;

    const-string/jumbo v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/c/f;->a:Lcom/b/a/d/b/c/f;

    .line 33
    new-instance v0, Lcom/b/a/d/b/c/g;

    const-string/jumbo v1, "LOG"

    invoke-direct {v0, v1, v3}, Lcom/b/a/d/b/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/c/f;->b:Lcom/b/a/d/b/c/f;

    .line 42
    new-instance v0, Lcom/b/a/d/b/c/h;

    const-string/jumbo v1, "THROW"

    invoke-direct {v0, v1, v4}, Lcom/b/a/d/b/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/c/f;->c:Lcom/b/a/d/b/c/f;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/b/a/d/b/c/f;

    sget-object v1, Lcom/b/a/d/b/c/f;->a:Lcom/b/a/d/b/c/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/d/b/c/f;->b:Lcom/b/a/d/b/c/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/d/b/c/f;->c:Lcom/b/a/d/b/c/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/b/a/d/b/c/f;->d:[Lcom/b/a/d/b/c/f;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/b/a/d/b/c/b;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/b/a/d/b/c/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/d/b/c/f;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/b/a/d/b/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/c/f;

    return-object v0
.end method

.method public static values()[Lcom/b/a/d/b/c/f;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/b/a/d/b/c/f;->d:[Lcom/b/a/d/b/c/f;

    invoke-virtual {v0}, [Lcom/b/a/d/b/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/d/b/c/f;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

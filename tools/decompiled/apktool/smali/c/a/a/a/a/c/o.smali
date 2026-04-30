.class public final enum Lc/a/a/a/a/c/o;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/a/a/a/a/c/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/a/a/c/o;

.field public static final enum b:Lc/a/a/a/a/c/o;

.field public static final enum c:Lc/a/a/a/a/c/o;

.field public static final enum d:Lc/a/a/a/a/c/o;

.field private static final synthetic e:[Lc/a/a/a/a/c/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lc/a/a/a/a/c/o;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/c/o;->a:Lc/a/a/a/a/c/o;

    .line 25
    new-instance v0, Lc/a/a/a/a/c/o;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lc/a/a/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/c/o;->b:Lc/a/a/a/a/c/o;

    .line 26
    new-instance v0, Lc/a/a/a/a/c/o;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lc/a/a/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/c/o;->c:Lc/a/a/a/a/c/o;

    .line 27
    new-instance v0, Lc/a/a/a/a/c/o;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lc/a/a/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/c/o;->d:Lc/a/a/a/a/c/o;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lc/a/a/a/a/c/o;

    sget-object v1, Lc/a/a/a/a/c/o;->a:Lc/a/a/a/a/c/o;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/a/a/c/o;->b:Lc/a/a/a/a/c/o;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/a/a/c/o;->c:Lc/a/a/a/a/c/o;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/a/a/c/o;->d:Lc/a/a/a/a/c/o;

    aput-object v1, v0, v5

    sput-object v0, Lc/a/a/a/a/c/o;->e:[Lc/a/a/a/a/c/o;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lc/a/a/a/a/c/u;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/a/a/c/u;",
            "TY;)I"
        }
    .end annotation

    .prologue
    .line 38
    instance-of v0, p1, Lc/a/a/a/a/c/u;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lc/a/a/a/a/c/u;

    invoke-interface {p1}, Lc/a/a/a/a/c/u;->getPriority()Lc/a/a/a/a/c/o;

    move-result-object v0

    .line 44
    :goto_0
    invoke-virtual {v0}, Lc/a/a/a/a/c/o;->ordinal()I

    move-result v0

    invoke-interface {p0}, Lc/a/a/a/a/c/u;->getPriority()Lc/a/a/a/a/c/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/a/a/c/o;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 41
    :cond_0
    sget-object v0, Lc/a/a/a/a/c/o;->b:Lc/a/a/a/a/c/o;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/a/a/c/o;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lc/a/a/a/a/c/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/o;

    return-object v0
.end method

.method public static values()[Lc/a/a/a/a/c/o;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc/a/a/a/a/c/o;->e:[Lc/a/a/a/a/c/o;

    invoke-virtual {v0}, [Lc/a/a/a/a/c/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/a/a/c/o;

    return-object v0
.end method

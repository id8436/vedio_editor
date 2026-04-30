.class public final enum Lb/a/a/q;
.super Ljava/lang/Enum;
.source "ThreadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/q;

.field public static final enum b:Lb/a/a/q;

.field public static final enum c:Lb/a/a/q;

.field public static final enum d:Lb/a/a/q;

.field private static final synthetic e:[Lb/a/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lb/a/a/q;

    const-string/jumbo v1, "PostThread"

    invoke-direct {v0, v1, v2}, Lb/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/q;->a:Lb/a/a/q;

    .line 39
    new-instance v0, Lb/a/a/q;

    const-string/jumbo v1, "MainThread"

    invoke-direct {v0, v1, v3}, Lb/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/q;->b:Lb/a/a/q;

    .line 47
    new-instance v0, Lb/a/a/q;

    const-string/jumbo v1, "BackgroundThread"

    invoke-direct {v0, v1, v4}, Lb/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/q;->c:Lb/a/a/q;

    .line 56
    new-instance v0, Lb/a/a/q;

    const-string/jumbo v1, "Async"

    invoke-direct {v0, v1, v5}, Lb/a/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/q;->d:Lb/a/a/q;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/a/q;

    sget-object v1, Lb/a/a/q;->a:Lb/a/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/q;->b:Lb/a/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/q;->c:Lb/a/a/q;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/q;->d:Lb/a/a/q;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/a/q;->e:[Lb/a/a/q;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/q;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lb/a/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    return-object v0
.end method

.method public static values()[Lb/a/a/q;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lb/a/a/q;->e:[Lb/a/a/q;

    invoke-virtual {v0}, [Lb/a/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/q;

    return-object v0
.end method

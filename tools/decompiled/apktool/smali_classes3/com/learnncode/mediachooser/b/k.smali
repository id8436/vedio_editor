.class public final enum Lcom/learnncode/mediachooser/b/k;
.super Ljava/lang/Enum;
.source "MediaAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/learnncode/mediachooser/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/learnncode/mediachooser/b/k;

.field public static final enum b:Lcom/learnncode/mediachooser/b/k;

.field public static final enum c:Lcom/learnncode/mediachooser/b/k;

.field private static final synthetic d:[Lcom/learnncode/mediachooser/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    new-instance v0, Lcom/learnncode/mediachooser/b/k;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/learnncode/mediachooser/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/learnncode/mediachooser/b/k;->a:Lcom/learnncode/mediachooser/b/k;

    .line 272
    new-instance v0, Lcom/learnncode/mediachooser/b/k;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/learnncode/mediachooser/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/learnncode/mediachooser/b/k;->b:Lcom/learnncode/mediachooser/b/k;

    .line 276
    new-instance v0, Lcom/learnncode/mediachooser/b/k;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/learnncode/mediachooser/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/learnncode/mediachooser/b/k;->c:Lcom/learnncode/mediachooser/b/k;

    .line 264
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/learnncode/mediachooser/b/k;

    sget-object v1, Lcom/learnncode/mediachooser/b/k;->a:Lcom/learnncode/mediachooser/b/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/learnncode/mediachooser/b/k;->b:Lcom/learnncode/mediachooser/b/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/learnncode/mediachooser/b/k;->c:Lcom/learnncode/mediachooser/b/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/learnncode/mediachooser/b/k;->d:[Lcom/learnncode/mediachooser/b/k;

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
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/learnncode/mediachooser/b/k;
    .locals 1

    .prologue
    .line 264
    const-class v0, Lcom/learnncode/mediachooser/b/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/b/k;

    return-object v0
.end method

.method public static values()[Lcom/learnncode/mediachooser/b/k;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/learnncode/mediachooser/b/k;->d:[Lcom/learnncode/mediachooser/b/k;

    invoke-virtual {v0}, [Lcom/learnncode/mediachooser/b/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/learnncode/mediachooser/b/k;

    return-object v0
.end method

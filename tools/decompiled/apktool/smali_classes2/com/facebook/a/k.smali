.class final enum Lcom/facebook/a/k;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/k;

.field public static final enum b:Lcom/facebook/a/k;

.field public static final enum c:Lcom/facebook/a/k;

.field public static final enum d:Lcom/facebook/a/k;

.field public static final enum e:Lcom/facebook/a/k;

.field public static final enum f:Lcom/facebook/a/k;

.field private static final synthetic g:[Lcom/facebook/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 632
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "EXPLICIT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->a:Lcom/facebook/a/k;

    .line 633
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->b:Lcom/facebook/a/k;

    .line 634
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "SESSION_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    .line 635
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "PERSISTED_EVENTS"

    invoke-direct {v0, v1, v6}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->d:Lcom/facebook/a/k;

    .line 636
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "EVENT_THRESHOLD"

    invoke-direct {v0, v1, v7}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->e:Lcom/facebook/a/k;

    .line 637
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "EAGER_FLUSHING_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->f:Lcom/facebook/a/k;

    .line 630
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/a/k;

    sget-object v1, Lcom/facebook/a/k;->a:Lcom/facebook/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/k;->b:Lcom/facebook/a/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/a/k;->d:Lcom/facebook/a/k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/a/k;->e:Lcom/facebook/a/k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/a/k;->f:Lcom/facebook/a/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/a/k;->g:[Lcom/facebook/a/k;

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
    .line 631
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/k;
    .locals 1

    .prologue
    .line 630
    const-class v0, Lcom/facebook/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/k;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/k;
    .locals 1

    .prologue
    .line 630
    sget-object v0, Lcom/facebook/a/k;->g:[Lcom/facebook/a/k;

    invoke-virtual {v0}, [Lcom/facebook/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/k;

    return-object v0
.end method

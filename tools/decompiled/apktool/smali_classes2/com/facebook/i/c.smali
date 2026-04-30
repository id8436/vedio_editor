.class public final enum Lcom/facebook/i/c;
.super Ljava/lang/Enum;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/i/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/i/c;

.field public static final enum b:Lcom/facebook/i/c;

.field private static final synthetic c:[Lcom/facebook/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/facebook/i/c;

    const-string/jumbo v1, "MOBILE_INSTALL_EVENT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->a:Lcom/facebook/i/c;

    .line 42
    new-instance v0, Lcom/facebook/i/c;

    const-string/jumbo v1, "CUSTOM_APP_EVENTS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->b:Lcom/facebook/i/c;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/i/c;

    sget-object v1, Lcom/facebook/i/c;->a:Lcom/facebook/i/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/i/c;->b:Lcom/facebook/i/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/i/c;->c:[Lcom/facebook/i/c;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/i/c;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/i/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/i/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/i/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/i/c;->c:[Lcom/facebook/i/c;

    invoke-virtual {v0}, [Lcom/facebook/i/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/i/c;

    return-object v0
.end method

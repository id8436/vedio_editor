.class public final enum Lcom/twitter/c;
.super Ljava/lang/Enum;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/c;

.field public static final enum b:Lcom/twitter/c;

.field public static final enum c:Lcom/twitter/c;

.field public static final enum d:Lcom/twitter/c;

.field private static final synthetic e:[Lcom/twitter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/twitter/c;

    const-string/jumbo v1, "URL"

    invoke-direct {v0, v1, v2}, Lcom/twitter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/c;->a:Lcom/twitter/c;

    new-instance v0, Lcom/twitter/c;

    const-string/jumbo v1, "HASHTAG"

    invoke-direct {v0, v1, v3}, Lcom/twitter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/c;->b:Lcom/twitter/c;

    new-instance v0, Lcom/twitter/c;

    const-string/jumbo v1, "MENTION"

    invoke-direct {v0, v1, v4}, Lcom/twitter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/c;->c:Lcom/twitter/c;

    new-instance v0, Lcom/twitter/c;

    const-string/jumbo v1, "CASHTAG"

    invoke-direct {v0, v1, v5}, Lcom/twitter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/c;->d:Lcom/twitter/c;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/c;

    sget-object v1, Lcom/twitter/c;->a:Lcom/twitter/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/c;->b:Lcom/twitter/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/c;->c:Lcom/twitter/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/c;->d:Lcom/twitter/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/c;->e:[Lcom/twitter/c;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/c;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/twitter/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/c;

    return-object v0
.end method

.method public static values()[Lcom/twitter/c;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/twitter/c;->e:[Lcom/twitter/c;

    invoke-virtual {v0}, [Lcom/twitter/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/c;

    return-object v0
.end method

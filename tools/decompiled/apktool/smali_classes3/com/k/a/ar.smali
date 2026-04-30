.class public final enum Lcom/k/a/ar;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/k/a/ar;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/k/a/ar;

.field public static final enum b:Lcom/k/a/ar;

.field public static final enum c:Lcom/k/a/ar;

.field private static final synthetic d:[Lcom/k/a/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/k/a/ar;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/k/a/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/k/a/ar;->a:Lcom/k/a/ar;

    .line 104
    new-instance v0, Lcom/k/a/ar;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/k/a/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/k/a/ar;->b:Lcom/k/a/ar;

    .line 105
    new-instance v0, Lcom/k/a/ar;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/k/a/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/k/a/ar;->c:Lcom/k/a/ar;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/k/a/ar;

    sget-object v1, Lcom/k/a/ar;->a:Lcom/k/a/ar;

    aput-object v1, v0, v2

    sget-object v1, Lcom/k/a/ar;->b:Lcom/k/a/ar;

    aput-object v1, v0, v3

    sget-object v1, Lcom/k/a/ar;->c:Lcom/k/a/ar;

    aput-object v1, v0, v4

    sput-object v0, Lcom/k/a/ar;->d:[Lcom/k/a/ar;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/k/a/ar;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/k/a/ar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/k/a/ar;

    return-object v0
.end method

.method public static values()[Lcom/k/a/ar;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/k/a/ar;->d:[Lcom/k/a/ar;

    invoke-virtual {v0}, [Lcom/k/a/ar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/k/a/ar;

    return-object v0
.end method

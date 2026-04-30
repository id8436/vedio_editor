.class public final enum Lcom/c/a/a/f;
.super Ljava/lang/Enum;
.source "UriTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/a/f;

.field public static final enum b:Lcom/c/a/a/f;

.field private static final synthetic c:[Lcom/c/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/c/a/a/f;

    const-string/jumbo v1, "U"

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    new-instance v0, Lcom/c/a/a/f;

    const-string/jumbo v1, "UR"

    invoke-direct {v0, v1, v3}, Lcom/c/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/c/a/a/f;

    sget-object v1, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/a/a/f;->c:[Lcom/c/a/a/f;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/a/f;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/c/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/f;

    return-object v0
.end method

.method public static values()[Lcom/c/a/a/f;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/c/a/a/f;->c:[Lcom/c/a/a/f;

    invoke-virtual {v0}, [Lcom/c/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/a/f;

    return-object v0
.end method

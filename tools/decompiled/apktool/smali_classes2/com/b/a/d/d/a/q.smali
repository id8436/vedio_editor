.class public final enum Lcom/b/a/d/d/a/q;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/d/d/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/d/d/a/q;

.field public static final enum b:Lcom/b/a/d/d/a/q;

.field public static final enum c:Lcom/b/a/d/d/a/q;

.field public static final enum d:Lcom/b/a/d/d/a/q;

.field public static final enum e:Lcom/b/a/d/d/a/q;

.field private static final synthetic g:[Lcom/b/a/d/d/a/q;


# instance fields
.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/b/a/d/d/a/q;

    const-string/jumbo v1, "GIF"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/d/a/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/d/d/a/q;->a:Lcom/b/a/d/d/a/q;

    .line 30
    new-instance v0, Lcom/b/a/d/d/a/q;

    const-string/jumbo v1, "JPEG"

    invoke-direct {v0, v1, v3, v2}, Lcom/b/a/d/d/a/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/d/d/a/q;->b:Lcom/b/a/d/d/a/q;

    .line 32
    new-instance v0, Lcom/b/a/d/d/a/q;

    const-string/jumbo v1, "PNG_A"

    invoke-direct {v0, v1, v4, v3}, Lcom/b/a/d/d/a/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/d/d/a/q;->c:Lcom/b/a/d/d/a/q;

    .line 34
    new-instance v0, Lcom/b/a/d/d/a/q;

    const-string/jumbo v1, "PNG"

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/d/d/a/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/d/d/a/q;->d:Lcom/b/a/d/d/a/q;

    .line 36
    new-instance v0, Lcom/b/a/d/d/a/q;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v2}, Lcom/b/a/d/d/a/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/d/d/a/q;->e:Lcom/b/a/d/d/a/q;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/b/a/d/d/a/q;

    sget-object v1, Lcom/b/a/d/d/a/q;->a:Lcom/b/a/d/d/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/d/d/a/q;->b:Lcom/b/a/d/d/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/d/d/a/q;->c:Lcom/b/a/d/d/a/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/d/d/a/q;->d:Lcom/b/a/d/d/a/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/d/d/a/q;->e:Lcom/b/a/d/d/a/q;

    aput-object v1, v0, v6

    sput-object v0, Lcom/b/a/d/d/a/q;->g:[Lcom/b/a/d/d/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-boolean p3, p0, Lcom/b/a/d/d/a/q;->f:Z

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/d/d/a/q;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/b/a/d/d/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/d/a/q;

    return-object v0
.end method

.method public static values()[Lcom/b/a/d/d/a/q;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/b/a/d/d/a/q;->g:[Lcom/b/a/d/d/a/q;

    invoke-virtual {v0}, [Lcom/b/a/d/d/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/d/d/a/q;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/b/a/d/d/a/q;->f:Z

    return v0
.end method

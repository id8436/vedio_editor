.class public final enum Lcom/facebook/login/g;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/g;

.field public static final enum b:Lcom/facebook/login/g;

.field public static final enum c:Lcom/facebook/login/g;

.field private static final synthetic f:[Lcom/facebook/login/g;


# instance fields
.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    new-instance v0, Lcom/facebook/login/g;

    const-string/jumbo v1, "NATIVE_WITH_FALLBACK"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/facebook/login/g;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/login/g;->a:Lcom/facebook/login/g;

    .line 37
    new-instance v0, Lcom/facebook/login/g;

    const-string/jumbo v1, "NATIVE_ONLY"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/facebook/login/g;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/login/g;->b:Lcom/facebook/login/g;

    .line 42
    new-instance v0, Lcom/facebook/login/g;

    const-string/jumbo v1, "WEB_ONLY"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/facebook/login/g;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/login/g;->c:Lcom/facebook/login/g;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/login/g;

    sget-object v1, Lcom/facebook/login/g;->a:Lcom/facebook/login/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/g;->b:Lcom/facebook/login/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/login/g;->c:Lcom/facebook/login/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/login/g;->f:[Lcom/facebook/login/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-boolean p3, p0, Lcom/facebook/login/g;->d:Z

    .line 49
    iput-boolean p4, p0, Lcom/facebook/login/g;->e:Z

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/g;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/login/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/g;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/g;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/login/g;->f:[Lcom/facebook/login/g;

    invoke-virtual {v0}, [Lcom/facebook/login/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/g;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/login/g;->d:Z

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/login/g;->e:Z

    return v0
.end method

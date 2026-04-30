.class final enum Ld/ak;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ld/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld/ak;

.field public static final enum b:Ld/ak;

.field public static final enum c:Ld/ak;

.field public static final enum d:Ld/ak;

.field public static final enum e:Ld/ak;

.field private static final synthetic f:[Ld/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1313
    new-instance v0, Ld/ak;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Ld/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ak;->a:Ld/ak;

    .line 1314
    new-instance v0, Ld/ak;

    const-string/jumbo v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Ld/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ak;->b:Ld/ak;

    .line 1315
    new-instance v0, Ld/ak;

    const-string/jumbo v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Ld/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ak;->c:Ld/ak;

    .line 1316
    new-instance v0, Ld/ak;

    const-string/jumbo v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Ld/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ak;->d:Ld/ak;

    .line 1317
    new-instance v0, Ld/ak;

    const-string/jumbo v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Ld/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ak;->e:Ld/ak;

    .line 1312
    const/4 v0, 0x5

    new-array v0, v0, [Ld/ak;

    sget-object v1, Ld/ak;->a:Ld/ak;

    aput-object v1, v0, v2

    sget-object v1, Ld/ak;->b:Ld/ak;

    aput-object v1, v0, v3

    sget-object v1, Ld/ak;->c:Ld/ak;

    aput-object v1, v0, v4

    sget-object v1, Ld/ak;->d:Ld/ak;

    aput-object v1, v0, v5

    sget-object v1, Ld/ak;->e:Ld/ak;

    aput-object v1, v0, v6

    sput-object v0, Ld/ak;->f:[Ld/ak;

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
    .line 1312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld/ak;
    .locals 1

    .prologue
    .line 1312
    const-class v0, Ld/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ld/ak;

    return-object v0
.end method

.method public static values()[Ld/ak;
    .locals 1

    .prologue
    .line 1312
    sget-object v0, Ld/ak;->f:[Ld/ak;

    invoke-virtual {v0}, [Ld/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/ak;

    return-object v0
.end method

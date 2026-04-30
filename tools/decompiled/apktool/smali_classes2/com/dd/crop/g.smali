.class public final enum Lcom/dd/crop/g;
.super Ljava/lang/Enum;
.source "TextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dd/crop/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dd/crop/g;

.field public static final enum b:Lcom/dd/crop/g;

.field public static final enum c:Lcom/dd/crop/g;

.field public static final enum d:Lcom/dd/crop/g;

.field public static final enum e:Lcom/dd/crop/g;

.field private static final synthetic f:[Lcom/dd/crop/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/dd/crop/g;

    const-string/jumbo v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/dd/crop/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dd/crop/g;->a:Lcom/dd/crop/g;

    new-instance v0, Lcom/dd/crop/g;

    const-string/jumbo v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/dd/crop/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dd/crop/g;->b:Lcom/dd/crop/g;

    new-instance v0, Lcom/dd/crop/g;

    const-string/jumbo v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/dd/crop/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dd/crop/g;->c:Lcom/dd/crop/g;

    new-instance v0, Lcom/dd/crop/g;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/dd/crop/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dd/crop/g;->d:Lcom/dd/crop/g;

    new-instance v0, Lcom/dd/crop/g;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v6}, Lcom/dd/crop/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dd/crop/g;

    sget-object v1, Lcom/dd/crop/g;->a:Lcom/dd/crop/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dd/crop/g;->b:Lcom/dd/crop/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dd/crop/g;->c:Lcom/dd/crop/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dd/crop/g;->d:Lcom/dd/crop/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dd/crop/g;->e:Lcom/dd/crop/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dd/crop/g;->f:[Lcom/dd/crop/g;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dd/crop/g;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/dd/crop/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dd/crop/g;

    return-object v0
.end method

.method public static values()[Lcom/dd/crop/g;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/dd/crop/g;->f:[Lcom/dd/crop/g;

    invoke-virtual {v0}, [Lcom/dd/crop/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dd/crop/g;

    return-object v0
.end method

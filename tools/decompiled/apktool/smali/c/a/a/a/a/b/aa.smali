.class public final enum Lc/a/a/a/a/b/aa;
.super Ljava/lang/Enum;
.source "IdManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/a/a/a/a/b/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/a/a/b/aa;

.field public static final enum b:Lc/a/a/a/a/b/aa;

.field public static final enum c:Lc/a/a/a/a/b/aa;

.field public static final enum d:Lc/a/a/a/a/b/aa;

.field public static final enum e:Lc/a/a/a/a/b/aa;

.field public static final enum f:Lc/a/a/a/a/b/aa;

.field public static final enum g:Lc/a/a/a/a/b/aa;

.field private static final synthetic i:[Lc/a/a/a/a/b/aa;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 85
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v6, v4}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->a:Lc/a/a/a/a/b/aa;

    .line 86
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v4, v5}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->b:Lc/a/a/a/a/b/aa;

    .line 89
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "FONT_TOKEN"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->c:Lc/a/a/a/a/b/aa;

    .line 90
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->d:Lc/a/a/a/a/b/aa;

    .line 91
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v2}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->e:Lc/a/a/a/a/b/aa;

    .line 92
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->f:Lc/a/a/a/a/b/aa;

    .line 93
    new-instance v0, Lc/a/a/a/a/b/aa;

    const-string/jumbo v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/aa;->g:Lc/a/a/a/a/b/aa;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Lc/a/a/a/a/b/aa;

    sget-object v1, Lc/a/a/a/a/b/aa;->a:Lc/a/a/a/a/b/aa;

    aput-object v1, v0, v6

    sget-object v1, Lc/a/a/a/a/b/aa;->b:Lc/a/a/a/a/b/aa;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/a/a/b/aa;->c:Lc/a/a/a/a/b/aa;

    aput-object v1, v0, v5

    sget-object v1, Lc/a/a/a/a/b/aa;->d:Lc/a/a/a/a/b/aa;

    aput-object v1, v0, v7

    sget-object v1, Lc/a/a/a/a/b/aa;->e:Lc/a/a/a/a/b/aa;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lc/a/a/a/a/b/aa;->f:Lc/a/a/a/a/b/aa;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lc/a/a/a/a/b/aa;->g:Lc/a/a/a/a/b/aa;

    aput-object v2, v0, v1

    sput-object v0, Lc/a/a/a/a/b/aa;->i:[Lc/a/a/a/a/b/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lc/a/a/a/a/b/aa;->h:I

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/a/a/b/aa;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lc/a/a/a/a/b/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/b/aa;

    return-object v0
.end method

.method public static values()[Lc/a/a/a/a/b/aa;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lc/a/a/a/a/b/aa;->i:[Lc/a/a/a/a/b/aa;

    invoke-virtual {v0}, [Lc/a/a/a/a/b/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/a/a/b/aa;

    return-object v0
.end method

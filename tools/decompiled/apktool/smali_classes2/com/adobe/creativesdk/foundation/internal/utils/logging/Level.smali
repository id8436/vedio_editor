.class public final enum Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

.field public static final enum DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

.field public static final enum ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

.field public static final enum INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

.field public static final enum WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "WARN"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->_val:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->_val:I

    return v0
.end method

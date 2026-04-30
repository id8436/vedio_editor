.class public final enum Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

.field public static final enum P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    const-string/jumbo v1, "P_30"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->numVal:I

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->numVal:I

    return v0
.end method

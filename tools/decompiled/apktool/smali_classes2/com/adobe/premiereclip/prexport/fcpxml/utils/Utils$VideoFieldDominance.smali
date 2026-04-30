.class public final enum Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

.field public static final enum lower:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

.field public static final enum none:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

.field public static final enum upper:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    const-string/jumbo v1, "upper"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->upper:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    const-string/jumbo v1, "lower"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->lower:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->none:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->upper:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->lower:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->none:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->numVal:I

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->numVal:I

    return v0
.end method

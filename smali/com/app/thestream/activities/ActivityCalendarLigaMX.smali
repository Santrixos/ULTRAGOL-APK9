.class public Lcom/app/thestream/activities/ActivityCalendarLigaMX;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityCalendarLigaMX.java"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/activities/ActivityCalendarLigaMX$LoadCalendarTask;
    }
.end annotation

# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarLigaMX"

# instance fields
.field private btnAnterior:Landroid/widget/Button;

.field private btnSiguiente:Landroid/widget/Button;

.field private calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

.field private geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

.field private jornadaActual:I

.field private jornadaInfoSection:Landroid/widget/LinearLayout;

.field private layoutEmpty:Landroid/widget/LinearLayout;

.field private partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

.field private progressLoading:Landroid/widget/ProgressBar;

.field private recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

.field private statsFooter:Landroid/widget/LinearLayout;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private tvJornadaFechas:Landroid/widget/TextView;

.field private tvJornadaInfo:Landroid/widget/TextView;

.field private tvJornadaNumero:Landroid/widget/TextView;

.field private tvJornadaTipo:Landroid/widget/TextView;

.field private tvTotalJornadas:Landroid/widget/TextView;

# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    return-void
.end method

.method static synthetic access$000(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/thestream/activities/ActivityCalendarLigaMX;Lcom/app/thestream/models/CalendarioLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;
    .param p1, "x1"    # Lcom/app/thestream/models/CalendarioLigaMX;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 1
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updateStats()V

    return-void
.end method

.method static synthetic access$200(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)V
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadJornada(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 1
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showError()V

    return-void
.end method

.method static synthetic access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    iget v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    return v0
.end method

.method static synthetic access$402(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)I
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    return p1
.end method

.method private initGeminiService()V
    .registers 3

    .prologue
    .line 135
    new-instance v0, Lcom/app/thestream/utils/GeminiLigaMXService;

    invoke-direct {v0}, Lcom/app/thestream/utils/GeminiLigaMXService;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    .line 136
    const-string v0, "CalendarLigaMX"

    const-string v1, "\ud83e\udd16 Servicio Gemini inicializado"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private initViews()V
    .registers 5

    .prologue
    const v3, 0x7f0a0001  # R.id.toolbar

    .line 58
    invoke-virtual {p0, v3}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 59
    const v0, 0x7f0a0120  # R.id.tv_jornada_info

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaInfo:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a0121  # R.id.tv_jornada_numero

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaNumero:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a0041  # R.id.btn_anterior

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0a0042  # R.id.btn_siguiente

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0a00f0  # R.id.recycler_partidos

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    const-string v0, "CalendarLigaMX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btnAnterior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    if-eqz v2, :cond_59

    const-string v2, "\u2705"

    :goto_4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "CalendarLigaMX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btnSiguiente: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    if-eqz v2, :cond_5c

    const-string v2, "\u2705"

    :goto_6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 76
    :cond_59
    const-string v2, "\u274c"

    goto :goto_4f

    .line 77
    :cond_5c
    const-string v2, "\u274c"

    goto :goto_6e
.end method

.method private loadCalendario()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showLoading(Z)V

    .line 143
    new-instance v0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$LoadCalendarTask;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$LoadCalendarTask;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    .line 161
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$LoadCalendarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method private loadJornada(I)V
    .registers 7
    .param p1, "numeroJornada"    # I

    .prologue
    .line 164
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v3}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_d

    .line 165
    :cond_c
    return-void

    .line 168
    :cond_d
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v3}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "jornadas":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Jornada;>;"
    const/4 v3, 0x1

    if-lt p1, v3, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le p1, v3, :cond_1e

    .line 170
    :cond_1d
    return-void

    .line 173
    :cond_1e
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/models/Jornada;

    .line 174
    .local v0, "jornada":Lcom/app/thestream/models/Jornada;
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updateJornadaInfo(Lcom/app/thestream/models/Jornada;)V

    .line 175
    invoke-virtual {v0}, Lcom/app/thestream/models/Jornada;->getPartidos()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updatePartidos(Ljava/util/List;)V

    .line 176
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updateNavigationButtons()V

    .line 178
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showLoading(Z)V

    .line 179
    return-void
.end method

.method private setupClickListeners()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    if-nez v0, :cond_14

    .line 104
    :cond_8
    const-string v0, "CalendarLigaMX"

    const-string v1, "\u274c Error cr\u00edtico: Botones no encontrados en el layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_14
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    new-instance v1, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    new-instance v1, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const-string v0, "CalendarLigaMX"

    const-string v1, "\u2705 Click listeners configurados correctamente"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private setupRecyclerView()V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    new-instance v0, Lcom/app/thestream/adapters/PartidoAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/app/thestream/adapters/PartidoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

    .line 99
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    return-void
.end method

.method private setupToolbar()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 90
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 91
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e0041  # R.string.calendario_liga_mx

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 94
    :cond_1a
    return-void
.end method

.method private showError()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showLoading(Z)V

    .line 229
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private showGeminiNoticias()V
    .registers 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    if-nez v1, :cond_f

    .line 313
    const-string v1, "\u26a0\ufe0f Servicio no disponible"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 344
    :goto_e
    return-void

    .line 318
    :cond_f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83e\udd16 Gemini AI"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Obteniendo noticias de Liga MX..."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 323
    .local v0, "loadingDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 325
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    new-instance v2, Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;

    invoke-direct {v2, p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Lcom/app/thestream/utils/GeminiLigaMXService;->getLigaMXNoticias(Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V

    goto :goto_e
.end method

.method private showLoading(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 222
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->progressLoading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2c

    move v0, v0

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2e

    move v2, v1

    :goto_f
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    return-void

    :cond_2c
    move v0, v1

    .line 222
    goto :goto_7

    .line 223
    :cond_2e
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private updateNavigationButtons()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    iget v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    if-le v2, v1, :cond_2c

    move v2, v1

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v3}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    :goto_21
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    return-void

    .line 209
    :cond_2c
    const/4 v2, 0x0

    goto :goto_8

    .line 210
    :cond_2e
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private updateStats()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v0}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 216
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvTotalJornadas:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v1}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->statsFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    :cond_2a
    return-void
.end method

# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040022  # R.layout.activity_calendar_ligamx

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->initViews()V

    .line 49
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupToolbar()V

    .line 50
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupRecyclerView()V

    .line 51
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupClickListeners()V

    .line 52
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->initGeminiService()V

    .line 53
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadCalendario()V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001  # R.menu.menu_calendar_ligamx

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 261
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    if-eqz v0, :cond_c

    .line 263
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    invoke-virtual {v0}, Lcom/app/thestream/utils/GeminiLigaMXService;->shutdown()V

    .line 265
    :cond_c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 242
    .local v1, "itemId":I
    const v2, 0x102002c  # android.R.id.home

    if-ne v1, v2, :cond_f

    .line 243
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->onBackPressed()V

    .line 256
    :cond_e
    :goto_e
    return v0

    .line 245
    :cond_f
    const v2, 0x7f0c0070  # R.id.menu_gemini_analisis

    if-ne v1, v2, :cond_18

    .line 246
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showGeminiJornadaInfo()V

    goto :goto_e

    .line 248
    :cond_18
    const v2, 0x7f0c0071  # R.id.menu_gemini_noticias

    if-ne v1, v2, :cond_21

    .line 249
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showGeminiNoticias()V

    goto :goto_e

    .line 251
    :cond_21
    const v2, 0x7f0c0001  # R.id.menu_actualizar

    if-ne v1, v2, :cond_2a

    .line 252
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadCalendario()V

    goto :goto_e

    .line 256
    :cond_2a
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e
.end method
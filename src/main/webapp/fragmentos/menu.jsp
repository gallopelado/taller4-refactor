<div class="sidebar" id="sidebar">
        <div class="sidebar-header">
            <div>
                <h3>🔒 DiazPet</h3>
                <small style="color: rgba(255,255,255,0.8);">Administrador</small>
            </div>
            <button class="toggle-btn" onclick="toggleSidebar()">
                <i class="fas fa-bars"></i>
            </button>
        </div>
        
        <div class="user-section">
            <div class="user-info">
                <div class="user-avatar"><%-- nombre.substring(0,1).toUpperCase() --%></div>
                <span>
                    <strong><%-- nombre --%></strong><br>
                    <small style="opacity: 0.8;"><%-- usuario --%></small>
                </span>
            </div>
        </div>
        
        <div class="sidebar-menu">
            <a href="#" class="menu-item active" onclick="showModule('inicio')">
                <i class="fas fa-home"></i>
                <span class="menu-text">Inicio</span>
            </a>
            <a href="#" class="menu-item" onclick="showModule('usuarios')">
                <i class="fas fa-users-cog"></i>
                <span class="menu-text">Usuarios</span>
            </a>
            <a href="#" class="menu-item" onclick="showModule('roles')">
                <i class="fas fa-shield-alt"></i>
                <span class="menu-text">Roles</span>
            </a>
            <a href="#" class="menu-item" onclick="showModule('auditoria')">
                <i class="fas fa-history"></i>
                <span class="menu-text">Auditoría</span>
            </a>
            <a href="#" class="menu-item" onclick="showModule('configuracion')">
                <i class="fas fa-cog"></i>
                <span class="menu-text">Configuración</span>
            </a>
            <a href="#" class="menu-item" onclick="showModule('reportes')">
                <i class="fas fa-chart-bar"></i>
                <span class="menu-text">Reportes</span>
            </a>
        </div>
        
        <div class="logout-section">
            <a href="login.jsp" class="menu-item" onclick="return confirm('¿Seguro que deseas cerrar sesión?')">
                <i class="fas fa-sign-out-alt"></i>
                <span class="menu-text">Cerrar Sesión</span>
            </a>
        </div>
    </div>
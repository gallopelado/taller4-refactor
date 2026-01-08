<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // String usuario = (String) session.getAttribute("usuario");
    // String nombre = (String) session.getAttribute("nombre");
    // Integer idRol = (Integer) session.getAttribute("rol");

    // if (usuario == null || nombre == null || idRol == null) {
    //     response.sendRedirect("login.jsp");
    //     return;
    // }

    // // SOLO ADMIN (rol = 1)
    // if (idRol != 1) {
    //     response.sendRedirect("accesoDenegado.jsp");
    //     return;
    // }
%>

<c:import url="../../fragmentos/header_base.jsp"/>
<c:import url="../../fragmentos/menu.jsp"/>    
    
    <div class="main-content">
        <div class="top-bar">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <h2 id="pageTitle">Panel de Administración</h2>
                    <p class="date mb-0">
                        <i class="far fa-calendar"></i>
                        <span id="currentDate"></span>
                    </p>
                </div>
            </div>
        </div>
        
        <div class="content-area">
            <div id="module-inicio">
                <div class="stats-grid">
                    <div class="stat-card red">
                        <div class="stat-card-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <h6>USUARIOS ACTIVOS</h6>
                        <h2>24</h2>
                    </div>
                    
                    <div class="stat-card blue">
                        <div class="stat-card-icon">
                            <i class="fas fa-calendar-check"></i>
                        </div>
                        <h6>CITAS HOY</h6>
                        <h2>18</h2>
                    </div>
                    
                    <div class="stat-card green">
                        <div class="stat-card-icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <h6>INGRESOS HOY</h6>
                        <h2>$2,450</h2>
                    </div>
                    
                    <div class="stat-card purple">
                        <div class="stat-card-icon">
                            <i class="fas fa-paw"></i>
                        </div>
                        <h6>MASCOTAS REGISTRADAS</h6>
                        <h2>342</h2>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-8">
                        <div class="card-custom">
                            <div class="card-custom-header">
                                <h5><i class="fas fa-history"></i> Actividad Reciente del Sistema</h5>
                            </div>
                            <div class="card-custom-body">
                                <div class="activity-item">
                                    <div class="activity-icon green">
                                        <i class="fas fa-user-plus"></i>
                                    </div>
                                    <div class="activity-info">
                                        <h6>Nuevo usuario registrado</h6>
                                        <p>Usuario "recepcionista2" creado por Admin • Hace 5 minutos</p>
                                    </div>
                                </div>
                                
                                <div class="activity-item">
                                    <div class="activity-icon blue">
                                        <i class="fas fa-edit"></i>
                                    </div>
                                    <div class="activity-info">
                                        <h6>Configuración actualizada</h6>
                                        <p>Horario de atención modificado • Hace 1 hora</p>
                                    </div>
                                </div>
                                
                                <div class="activity-item">
                                    <div class="activity-icon red">
                                        <i class="fas fa-shield-alt"></i>
                                    </div>
                                    <div class="activity-info">
                                        <h6>Intento de acceso fallido</h6>
                                        <p>Usuario desconocido intentó acceder • Hace 2 horas</p>
                                    </div>
                                </div>
                                
                                <div class="activity-item">
                                    <div class="activity-icon green">
                                        <i class="fas fa-database"></i>
                                    </div>
                                    <div class="activity-info">
                                        <h6>Respaldo completado</h6>
                                        <p>Base de datos respaldada exitosamente • Hace 3 horas</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="card-custom">
                            <div class="card-custom-header">
                                <h5><i class="fas fa-bolt"></i> Accesos Rápidos</h5>
                            </div>
                            <div class="card-custom-body">
                                <div class="quick-actions">
                                    <a href="#" class="quick-action-btn red" onclick="showModule('usuarios'); return false;">
                                        <i class="fas fa-users-cog"></i>
                                        <span>Usuarios</span>
                                    </a>
                                    <a href="#" class="quick-action-btn blue" onclick="showModule('roles'); return false;">
                                        <i class="fas fa-shield-alt"></i>
                                        <span>Roles</span>
                                    </a>
                                    <a href="#" class="quick-action-btn green" onclick="showModule('configuracion'); return false;">
                                        <i class="fas fa-cog"></i>
                                        <span>Config</span>
                                    </a>
                                    <a href="#" class="quick-action-btn purple" onclick="showModule('reportes'); return false;">
                                        <i class="fas fa-chart-bar"></i>
                                        <span>Reportes</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="module-usuarios" style="display: none;">
                <div class="card-custom">
                    <div class="card-custom-body text-center py-5">
                        <i class="fas fa-users-cog" style="font-size: 64px; color: #dc2626; margin-bottom: 20px;"></i>
                        <h3>Gestión de Usuarios</h3>
                        <p class="text-muted">Administra usuarios del sistema, permisos y accesos.</p>
                        <button class="btn-primary-custom mt-3">Comenzar</button>
                    </div>
                </div>
            </div>
            
            <div id="module-roles" style="display: none;">
                <div class="card-custom">
                    <div class="card-custom-body text-center py-5">
                        <i class="fas fa-shield-alt" style="font-size: 64px; color: #3b82f6; margin-bottom: 20px;"></i>
                        <h3>Gestión de Roles</h3>
                        <p class="text-muted">Define y administra roles y permisos del sistema.</p>
                        <button class="btn-primary-custom mt-3">Comenzar</button>
                    </div>
                </div>
            </div>
            
            <div id="module-auditoria" style="display: none;">
                <div class="card-custom">
                    <div class="card-custom-body text-center py-5">
                        <i class="fas fa-history" style="font-size: 64px; color: #a78bfa; margin-bottom: 20px;"></i>
                        <h3>Auditoría del Sistema</h3>
                        <p class="text-muted">Revisa el historial de acciones y cambios en el sistema.</p>
                        <button class="btn-primary-custom mt-3">Ver Historial</button>
                    </div>
                </div>
            </div>
            
            <div id="module-configuracion" style="display: none;">
                <div class="card-custom">
                    <div class="card-custom-body text-center py-5">
                        <i class="fas fa-cog" style="font-size: 64px; color: #10b981; margin-bottom: 20px;"></i>
                        <h3>Configuración General</h3>
                        <p class="text-muted">Administra configuraciones globales del sistema.</p>
                        <button class="btn-primary-custom mt-3">Configurar</button>
                    </div>
                </div>
            </div>
            
            <div id="module-reportes" style="display: none;">
                <div class="card-custom">
                    <div class="card-custom-body text-center py-5">
                        <i class="fas fa-chart-bar" style="font-size: 64px; color: #ff8c42; margin-bottom: 20px;"></i>
                        <h3>Reportes y Estadísticas</h3>
                        <p class="text-muted">Genera reportes completos del sistema.</p>
                        <button class="btn-primary-custom mt-3">Ver Reportes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        function toggleSidebar() {
            document.getElementById('sidebar').classList.toggle('collapsed');
        }
        
        function showModule(moduleName) {
            const modules = ['inicio', 'usuarios', 'roles', 'auditoria', 'configuracion', 'reportes'];
            modules.forEach(mod => {
                document.getElementById('module-' + mod).style.display = 'none';
            });
            
            document.getElementById('module-' + moduleName).style.display = 'block';
            
            const titles = {
                'inicio': 'Panel de Administración',
                'usuarios': 'Gestión de Usuarios',
                'roles': 'Gestión de Roles',
                'auditoria': 'Auditoría del Sistema',
                'configuracion': 'Configuración General',
                'reportes': 'Reportes y Estadísticas'
            };
            document.getElementById('pageTitle').textContent = titles[moduleName];
            
            document.querySelectorAll('.menu-item').forEach(item => {
                item.classList.remove('active');
            });
            event.target.closest('.menu-item').classList.add('active');
        }
        
        function setCurrentDate() {
            const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
            const date = new Date().toLocaleDateString('es-ES', options);
            document.getElementById('currentDate').textContent = date.charAt(0).toUpperCase() + date.slice(1);
        }
        
        setCurrentDate();
    </script>
</body>
</html>
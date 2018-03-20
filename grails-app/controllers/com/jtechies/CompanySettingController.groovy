package com.jtechies



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompanySettingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompanySetting.list(params), model:[companySettingInstanceCount: CompanySetting.count()]
    }

    def show(CompanySetting companySettingInstance) {
        respond companySettingInstance
    }

    def create() {
        respond new CompanySetting(params)
    }

    @Transactional
    def save(CompanySetting companySettingInstance) {
        if (companySettingInstance == null) {
            notFound()
            return
        }

        if (companySettingInstance.hasErrors()) {
            respond companySettingInstance.errors, view:'create'
            return
        }

        companySettingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'companySetting.label', default: 'CompanySetting'), companySettingInstance.id])
                redirect companySettingInstance
            }
            '*' { respond companySettingInstance, [status: CREATED] }
        }
    }

    def edit(CompanySetting companySettingInstance) {
        respond companySettingInstance
    }

    @Transactional
    def update(CompanySetting companySettingInstance) {
        if (companySettingInstance == null) {
            notFound()
            return
        }

        if (companySettingInstance.hasErrors()) {
            respond companySettingInstance.errors, view:'edit'
            return
        }

        companySettingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CompanySetting.label', default: 'CompanySetting'), companySettingInstance.id])
                redirect companySettingInstance
            }
            '*'{ respond companySettingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CompanySetting companySettingInstance) {

        if (companySettingInstance == null) {
            notFound()
            return
        }

        companySettingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CompanySetting.label', default: 'CompanySetting'), companySettingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'companySetting.label', default: 'CompanySetting'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

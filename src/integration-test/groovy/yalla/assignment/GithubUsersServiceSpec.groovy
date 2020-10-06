package yalla.assignment

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class GithubUsersServiceSpec extends Specification {

    GithubUsersService githubUsersService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new GithubUsers(...).save(flush: true, failOnError: true)
        //new GithubUsers(...).save(flush: true, failOnError: true)
        //GithubUsers githubUsers = new GithubUsers(...).save(flush: true, failOnError: true)
        //new GithubUsers(...).save(flush: true, failOnError: true)
        //new GithubUsers(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //githubUsers.id
    }

    void "test get"() {
        setupData()

        expect:
        githubUsersService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<GithubUsers> githubUsersList = githubUsersService.list(max: 2, offset: 2)

        then:
        githubUsersList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        githubUsersService.count() == 5
    }

    void "test delete"() {
        Long githubUsersId = setupData()

        expect:
        githubUsersService.count() == 5

        when:
        githubUsersService.delete(githubUsersId)
        sessionFactory.currentSession.flush()

        then:
        githubUsersService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        GithubUsers githubUsers = new GithubUsers()
        githubUsersService.save(githubUsers)

        then:
        githubUsers.id != null
    }
}
